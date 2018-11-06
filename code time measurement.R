## 코드 시간 측정함수 : tictoc
## code time measurement : tictoc

devtools::install_github("collectivemedia/tictoc")
library(tictoc)

### 기본 : basic
tic("sleeping")
print("falling asleep...")
sleep_for_a_minute()
print("...waking up")
toc()
# [1] "falling asleep..."
# [1] "...waking up"
# sleeping: 60.026 sec elapsed

### 응용1 : Applications1
tic("total")
tic("data generation")
X <- matrix(rnorm(50000*1000), 50000, 1000)
b <- sample(1:1000, 1000)
y <- runif(1) + X %*% b + rnorm(50000)
toc()

### 응용2 : Applications2
tic("model fitting")
model <- lm(y ~ X)
toc()
# data generation: 3.792 sec elapsed
# model fitting: 39.278 sec elapsed
# total: 43.071 sec elapsed