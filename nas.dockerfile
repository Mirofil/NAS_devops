FROM nvcr.io/nvidia/pytorch:20.11-py3

RUN pip install torchvision torch ray nats_bench numpy fire ray[tune] wandb ConfigSpace hpbandster jupyter plotly seaborn yacs torch-lr-finder

#All this Pytorch Geometric mess for NASBench 301
RUN pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.8.0+cu111.html
RUN pip install torch-geometric

CMD jupyter lab --allow-root --ip=0.0.0.0 --no-browser --LabApp.trust_xheaders=True --LabApp.disable_check_xsrf=False --LabApp.allow_remote_access=True --LabApp.allow_origin='*'