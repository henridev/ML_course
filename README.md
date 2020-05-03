## Classification

$$
0 	\leq h_\theta \leq 1 \\
\dots \\
g(\theta^T*x) \text{ inside of this is actualy our z which we can plug in} \\ 
g(z) = \frac{1}{1+e^{-z}} \\
h_\theta(x) = \frac{1}{1+e^{-\theta^T*X}} \text{ output will be probability of y being 1 given x with param theta}
$$

---


$$
\text {probability of a zero is equal to full probability minus probability of one} \\
P(y=0|x;\theta) = 1 - P(y=1|x;\theta) \\ 
$$

$$

y = 1 \text{ if } h_\theta(x)\gt0.5 \text{ holds true if } \theta^T*x \gt 0 \\
\dots \\
y = 0 \text{ if } h_\theta(x)\lt0.5 \text{ holds true if } \theta^T*x \lt 0
$$

---

### cost functions for theta search 

$$
h_\theta(x) = \frac{1}{1+e^{-\theta^T*X}} \\
$$

$$
\dots \\
\text{think about previous made cost function for logistic regression}\\
\text{Cost}(h_\theta(x), y)
\dots \\
\text{however in logistic regression this is non convex (has local minima) because our } h_\theta \text{ is non lineair }\
$$


$$
\text{cost}(h_\theta(x), y) = 
\begin{cases}
    -log(h_\theta(X))       &  \text{if }  \text{y = 1}\\
    -log(1-h_\theta(X))    & \text{if }  \text{y = 0}
 \end{cases} \\
----\\
\text {now this would be handier to implement if we had a single equation} \\
----\\
\text{cost}(h_\theta(x), y) = [-y*log(h_\theta(X))] - [(1-y) * log(1-h_\theta(X))] \\
----\\
--OR--\\
J(\theta) = -\frac{1}{m}[\sum(y^i)logh_\theta(x^{(i)})+(1-y^{(i)})log(1-h_\theta(x^{(i)}))]
$$


<img src="https://www.shuhanyu.com/2018/07/08/LogisticRegressionOfCostFunction/convexFunction.png" width=500/>

#### minimize cost 

$$
\text{while } J(\theta) \text{ not minimum } \\
\text{do } \theta_j := \theta_j - \alpha\frac{\delta}{\delta\theta_j}J(\theta)
$$



---

#  Neural Networks 

<img src="https://www.learnopencv.com/wp-content/uploads/2017/10/mlp-diagram.jpg"/> 
$$
a_1^2 = g(\theta^{(1)}_{11}x_1 + \theta^{(1)}_{12}x_2 + \theta^{(1)}_{13}x_3 + \theta^{(1)}_{14}x_4)\\a_2^2 = g(\theta^{(1)}_{21}x_1 + \theta^{(1)}_{22}x_2 + \theta^{(1)}_{23}x_3 + \theta^{(1)}_{24}x_4)\\a_3^2 = g(\theta^{(1)}_{31}x_1 + \theta^{(1)}_{32}x_2 + \theta^{(1)}_{33}x_3 + \theta^{(1)}_{34}x_4)\\\dots \\h_\theta(x) = a_1^{(3)}=g(\theta^{(2)}_{11}a^{2}_1 + \theta^{(2)}_{12}a^{2}_2 + \theta^{(2)}_{13}a^{2}_3 )
$$


vectorized:
$$
x =\begin{bmatrix}x_0 \\x_1 \\x_2  \\x_3  \\\end{bmatrix}z^2 =\begin{bmatrix} z_1^{(2)} \\z_2^{(2)}  \\z_3^{(2)}  \\\end{bmatrix} \\z^{2} = \theta^{(1)}*x \text{ is equal to } z^{2} = \theta^{(1)}*a^{(1)} \\a^{(2)} = g(z^{2}) \text{ add } a^{(2)}_0 = 1 \\z^{3} = \theta^{(2)}*a^{(2)} \\ah_\theta = a^{3} = g(z^{(3)})
$$
