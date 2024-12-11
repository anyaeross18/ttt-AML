# Fine-tuning the TTT Model

## Abstract
Despite its promise, the (Test Time Training) TTT model is relatively untested across diverse domains, with only seven
citations as of now. The scarcity of research applying TTT to domain-specific datasets, especially
those with long sequences, creates an opportunity to both validate and potentially expand the model’s
utility in complex, real-world applications. With a pre-trained open-source model built on the Pile
dataset, we aim to bridge this gap by exploring TTT’s flexibility and efficacy on specialized datasets
requiring nuanced, long-context comprehension.

## Fine-tuning TTT
Please run the TTT_Hugging_Face.ipynb notebook to fine-tune the TTT model on GovReport and PubMed. The notebook is well documented, and includes instructions for environment setup, such as installing necessary libraries and entering the Hugging Face and Wandb API keys.

## Notes
Create a Hugging Face account.
Go to https://huggingface.co/settings/tokens, generate a new token, add it to the Key Icon section on the left with "HF_TOKEN" as the name.
Go to https://huggingface.co/meta-llama/Llama-2-7b-hf, fill out the form and request permission.


