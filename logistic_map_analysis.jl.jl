using Plots

# Логистическое отображение
func(x, n, r) = ( x[n+1] = r*x[n]*(1-x[n]) )

logistic_map(x, n, r) =  map(i -> func(x, i, r), 1:n-1), display(x)

# Начальные значение
start = 0.1
r = 2.9

# Количество итераций
n = 30

x = zeros(n)
x[begin] = start

logistic_map(x, n, r)
plot(1:n, x, xlabel = "X_n", ylabel = "X_(n+1)",title="Logistic Map", legend=false)










