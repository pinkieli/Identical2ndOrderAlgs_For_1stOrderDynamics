# **Identical2ndOrderAlgs_For_1stOrderDynamics**

### **Overview**

This repository contains the source code for the numerical experiments and new algorithms presented in the paper:

**Novel implicit integration algorithms with identical second-order accuracy and flexible dissipation control for first-order transient problems**   
Authors: Jinze Li, Naigang Cui, Yijun Zhu, and Kaiping Yu.  
Journal Submission: International Journal for Numerical Methods in Engineering 

This code was implemented in **Julia** and includes the methods developed in the paper. The purpose of this repository is to allow other researchers to replicate our results and experiment with their good algorithms.

---

### **Requirements**

- **JULIA** version >= 1.10.0
- Required Packages:
  - [DelimitedFiles](https://docs.julialang.org/en/v1/stdlib/DelimitedFiles/) (v1.9.1)
  - [LinearAlgebra](https://github.com/JuliaLang/julia/tree/master/stdlib/LinearAlgebra) (v1.11.0)
  - [PyPlot](https://github.com/JuliaPy/PyPlot.jl) (v2.11.5)
  - [Roots](https://github.com/JuliaMath/Roots.jl) (v2.2.1)
  - [StaticArrays](https://github.com/JuliaArrays/StaticArrays.jl) (v1.9.7)

For detailed package installation, see the [help document](https://docs.julialang.org/en/v1/) in Julia.

---

### **Usage**

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/pinkieli/Identical2ndOrderAlgs_For_1stOrderDynamics.git
    ```
   
2. Navigate to the project directory:

    ```bash
    cd Identical2ndOrderAlgs_For_1stOrderDynamics
    ```

3. You are now ready to run the code. To apply some algorithm from the paper, run the following command:
  
    ```julia
    include("AlgorithmName.jl")
    ```

---

### **Reproducing Results**

To reproduce the results from the paper:

1. Run the code for each experiment:

    ```julia
    include("Example_XXXX.jl")
    ```

2. Output files and plots will be generated in the current directory.


---

### **Contributing**

We welcome contributions from the research community. If you wish to contribute or have any questions about using the code, please open an issue or submit a pull request.

For discussions about the details of the implementation, feel free to contact us directly.

---

### **Contact**

For any inquiries or issues with the code, please reach out to:

- **Jinze Li**  
  Email: pinkie.ljz@gmail.com  
  Institution: Harbin Institute of Technology

- **Kaiping Yu**  
  Email: kaipingyu1968@gmail.com  
  Institution: Harbin Institute of Technology  

---

### **License**

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

