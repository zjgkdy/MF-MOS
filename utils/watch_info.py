import torch

if __name__ == "__main__":
    model_path_1 = "ckpt/mfmos_ckpt_ours/MFMOS_valid_best"
    model_path_2 = "ckpt/mfmos_ckpt_iou7612/MFMOS_valid_best"
    w_dict_1 = torch.load(f"{model_path_1}", map_location=lambda storage, loc: storage)
    w_dict_2 = torch.load(f"{model_path_2}", map_location=lambda storage, loc: storage)
    pass