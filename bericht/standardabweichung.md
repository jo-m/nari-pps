* $$n: \text{Sequenzlänge}$$
* $$q: \text{Wahrscheinlichkeit für } x_n = 0$$
* $$\mu_n: \text{Mittelwert} = 1-q$$
* Anzahl Einsen: $$n(1-q)$$
* Anzahl Nullen: $$nq$$

### Standardabweichung
$$\Rightarrow \sigma(q) =  \frac{1}{n} \sqrt{n^2 q(1-q)^2 + n^2(1-q)(1-(1-q))^2} = $$
$$\sqrt{q(1-q)^2 + (1-q)q^2} = $$
$$\sqrt{(1-p)(p+p^2)}=$$
$$\sqrt{p-p^3}$$

**Tests:**

* $$\sigma(0) = 0$$
* $$\sigma(1) = 0$$
* $$\sigma(0.5) \approx 0.612372$$
