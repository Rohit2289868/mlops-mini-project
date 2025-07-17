# import mlflow
# import dagshub

# mlflow.set_experiment_uri("https://dagshub.com/rk2289868/mlops-mini-project.mlflow")
# dagshub.init(repo_owner='rk2289868', repo_name='mlops-mini-project', mlflow=True)

# with mlflow.start_run():
#   mlflow.log_param('parameter name', 'value')
#   mlflow.log_metric('metric name', 1)

import mlflow
print(mlflow.__version__)