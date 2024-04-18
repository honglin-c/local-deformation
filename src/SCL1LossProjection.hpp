#ifndef SRC_SCL1LOSSSTEPBEHAVIOR_HPP_
#define SRC_SCL1LOSSSTEPBEHAVIOR_HPP_

#include "Math.hpp"
#include "AlgorithmData.hpp"

namespace wrapd {

class SCL1LossProjection{
 public:
    SCL1LossProjection(const std::shared_ptr<System> &system, const std::shared_ptr<AlgorithmData> &algorithm_data) {
        m_Z = math::MatX3::Zero(system->m_xfree_rows, 3);
        m_U = math::MatX3::Zero(system->m_xfree_rows, 3);
        m_X0 = algorithm_data->m_S_free.transpose() * system->X_init();

        VA.resize(m_X0.rows());
        std::fill(VA.begin(), VA.end(), 1.0);

        sc_l1_w = system->sc_l1_w;
        sc_l1_threshold = system->sc_l1_threshold;
    } 
    
    void project(const math::MatX3 &m_X) {
        double VA_max = 1.0;
        double rho = 10.0 * sc_l1_w * VA_max / sc_l1_threshold;
        #pragma omp for
        for (int i = 0; i < m_X.rows(); i++) {
            m_Z.row(i) = shrinkage_smooth_sc_l1_loss(m_X.row(i)-m_X0.row(i)+m_U.row(i), 
                                                    sc_l1_w * VA[i], rho);
        }
    }

    void update_U(const math::MatX3 &m_X) {
        m_U = m_U + m_X - m_Z - m_X0;
    }

    math::MatX3 X_sc_l1(const math::MatX3 &m_X) {
        return m_X - m_X0 - m_Z + m_U;
    }

 protected: 
    math::Vec3 shrinkage_smooth_sc_l1_loss(const math::Vec3 &x, double w, double rho) {
        double s = sc_l1_threshold;
        assert(rho > w/ s);
        math::Vec3 z;
        if (x.norm() < sc_l1_threshold)
            z = std::max(0.0, rho*s-w*s/x.norm()) * x / (rho*s-w);
        else
            z = x;
        return z;
    }


 protected:
    math::MatX3 m_Z;
    math::MatX3 m_U;
    math::MatX3 m_X0;

    std::vector<double> VA;
    double sc_l1_threshold = 0.1;
    double sc_l1_w = 1e4;
};


}  // namespace wrapd

#endif  // SRC_SCL1LOSSSTEPBEHAVIOR_HPP_