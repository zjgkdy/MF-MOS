import torch

if __name__ == "__main__":
    model_path = "/home/ysy/MF-MOS/log/Train/2025-7-23-19:09/MFMOS"
    w_dict = torch.load(f"{model_path}", map_location=lambda storage, loc: storage)
    pass