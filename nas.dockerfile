FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel

RUN pip install torchvision torch ray nats_bench numpy fire ray[tune] wandb ConfigSpace hpbandster jupyter