
from transformers import LEDTokenizer
from transformers import LEDForConditionalGeneration


model = LEDForConditionalGeneration.from_pretrained("allenai/led-base-16384")
tokenizer= LEDTokenizer.from_pretrained("allenai/led-base-16384")

model.save_pretrained("models/led-base-8192")
tokenizer.save_pretrained("models/led-base-8192")