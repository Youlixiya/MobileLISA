CUDA_VISIBLE_DEVICES="2,3,4,5" deepspeed --master_port=24999 train.py --version="mtgv/MobileVLM-1.7B" --dataset_dir='./dataset' --vision_pretrained="sam_vit_h_4b8939.pth" --dataset="sem_seg||refer_seg||vqa||reason_seg" --sample_rates="9,3,3,1" --exp_name="mobilelisa-1.7b"

CUDA_VISIBLE_DEVICES="0" deepspeed --master_port=24999 train.py --version="mtgv/MobileVLM-1.7B" --dataset_dir='./dataset' --vision_pretrained="weights/efficient_sam_vits.pt" --dataset="sem_seg" --sample_rates="9" --exp_name="mobilelisa-1.7b"
deepspeed --master_port=24999 train.py \
  --dataset_dir='./dataset' \
  --vision_pretrained="sam_vit_h_4b8939.pth" \
  --eval_only