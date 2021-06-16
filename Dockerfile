FROM nvcr.io/nvidia/pytorch:20.12-py3

RUN pip install torchvision torch ray nats_bench numpy fire ray[tune] wandb ConfigSpace hpbandster jupyter plotly seaborn yacs torch-lr-finder nasbench301 tqdm xgboost tensorboard==2.4.0 tensorflow==2.4.0 numpy pandas Cython click pathvalidate
RUN pip install git+https://github.com/Mirofil/pytorch-hessian-eigenthings.git
RUN pip install git+https://github.com/Mirofil/higher.git

RUN pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-geometric

CMD jupyter lab --allow-root --ip=0.0.0.0 --no-browser --LabApp.trust_xheaders=True --LabApp.disable_check_xsrf=False --LabApp.allow_remote_access=True --LabApp.allow_origin='*'
