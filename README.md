# Model-Reference-Adaptive-Control
This project focuses on the adaptive control design within the Model Reference Adaptive Control (MRAC) framework for a specified plant. It also aims to verify the designed control system using the MATLAB-Simulink environment. For the controller parameters, I implemented adjustment rules based on Lyapunov stability analysis, which ensure the boundedness and asymptotic convergence of the model-following error in the MRAC control system.

# Description of the plant
The aeroplane in the form of the helicopter pitch dynamics in hover, as illustrated in the Fig. below, by tilting of the main rotor, it is possible to force the elevator-like input δ to the pitch dynamics of the helicopter, influencing the pitch rate q. Locally, and neglecting some non-dominating effects, the dynamics of pitch motion can be approximated by the following equation:

q_dot(t) = θ_a0 * q(t) - θ_b0 * δ(t) + θ_c0 * tanh(360 / pi * q(t))

​
 


![image](https://github.com/user-attachments/assets/a05bd8fd-4b4c-4d3b-8fed-3bb0c7dec31d)

 Hovering helicopter in the pitch motion forced by the elevator-like input δ (based on E. Lavretsky, K. A. Wise: Robust and Adaptive Control with Aerospace Applications, Springer, London, 2013).
Link: https://link.springer.com/book/10.1007/978-3-031-38314-4

# Control performance requirements
 1. Pitch rate q(t) follows a time-varying reference xm(t) = qm(t) in the form of a bounded time-varying signal with a bounded time derivative.
 2. The tracking error e(t) ≜ x(t) − xm(t) asymptotically converges to zero, that is, limt→∞ e(t) = 0.
