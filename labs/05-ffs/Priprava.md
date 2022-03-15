**D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | reset |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | reset |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | set |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 1 | 1 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | 0 | reset |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | 0 | reset |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 0 | 1 | set |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | 1 | set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | 1 |  |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | 0 |  |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 |  | did not change |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | invert |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | invert |