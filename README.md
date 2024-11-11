# Learning to (Learn at Test Time): RNNs with Expressive Hidden States
[**Paper**](https://arxiv.org/abs/2407.04620)
| [**PyTorch Codebase**](https://github.com/test-time-training/ttt-lm-pytorch)
| [**Setup**](#setup)
| [**Replicating Experiments**](#replicating-experiments)
| [**Model Docs**](ttt/README.md)
| [**Dataset Preparation**](ttt/dataloader/README.md)
| [**Inference Benchmark**](https://github.com/test-time-training/ttt-lm-kernels)

## Abstract
Self-attention performs well in long context but has quadratic complexity. Existing RNN layers
have linear complexity, but their performance in long context is limited by the expressive power
of their hidden state. We propose a new class of sequence modeling layers with linear complexity
and an expressive hidden state. The key idea is to make the hidden state a machine learning
model itself, and the update rule a step of self-supervised learning. 

Since the hidden state is updated by training even on test sequences, our layers are called **Test-Time Training (TTT) layers**.
We consider two instantiations: TTT-Linear and TTT-MLP, whose hidden state is a linear model
and a two-layer MLP respectively. 

## Fine-tuning TTT
Please run the TTT_Hugging_Face.ipynb notebook to fine-tune the TTT model on GovReport and PubMed. The notebook is well documented, and includes instructions for environment setup, such as installing necessary libraries and entering the Hugging Face and Wandb API keys.
