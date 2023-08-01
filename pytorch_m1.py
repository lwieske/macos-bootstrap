import torch

print(f"PyTorch version: {torch.__version__}")

print(f"Is MPS (Metal Performance Shader) built? {torch.backends.mps.is_built()}")
print(f"Is MPS available? {torch.backends.mps.is_available()}")
      
device = "mps" if torch.backends.mps.is_available() else "cpu"
print(f"Using device: {device}")