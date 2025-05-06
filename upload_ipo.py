from transformers import AutoTokenizer, AutoModelForCausalLM
from peft import PeftModel

model = AutoModelForCausalLM.from_pretrained("assskelad/smollm2-360M-sft")
model = PeftModel.from_pretrained(model, "bahaelaila7/smollm2-360M-cpo_ipo")

tokenizer = AutoTokenizer.from_pretrained("assskelad/smollm2-360M-sft")
