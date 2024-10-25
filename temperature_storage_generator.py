import os
import json

current_dir = os.path.dirname(__file__)

data = []

for filename in os.listdir(current_dir):
    if filename.endswith(".json"):
        with open(os.path.join(current_dir, filename), "r") as file:
            data_json = json.load(file)
            if "temperature" in data_json:
                temperature = data_json["temperature"]
                file_name = filename[:-5]
                record = [[[f"minecraft:{file_name}"],[temperature]]]
                data.append(record)

print(data)