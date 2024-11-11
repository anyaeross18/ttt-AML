# Fine-tuning the TTT Model

##   Abstract
Despite its promise, the (Test Time Training) TTT model is relatively untested across diverse domains, with only seven9
citations as of now. The scarcity of research applying TTT to domain-specific datasets, especially10
those with long sequences, creates an opportunity to both validate and potentially expand the model’s11
utility in complex, real-world applications. With a pre-trained open-source model built on the Pile12
dataset, we aim to bridge this gap by exploring TTT’s flexibility and efficacy on specialized datasets13
requiring nuanced, long-context comprehension.

## Fine-tuning TTT
Please run the TTT_Hugging_Face.ipynb notebook to fine-tune the TTT model on GovReport and PubMed. The notebook is well documented, and includes instructions for environment setup, such as installing necessary libraries and entering the Hugging Face and Wandb API keys.
