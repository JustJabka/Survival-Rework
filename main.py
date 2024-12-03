import os
import json

def main():
    data = []
    files = os.listdir()
    for file_name in files:
        if file_name.endswith(".json"):
            try:
                biome_name = os.path.splitext(file_name)[0]
                with open(file_name, 'r', encoding='utf-8') as file:
                    content = json.load(file)
                temperature = content.get('temperature')
                if temperature is not None:
                    data.append([[biome_name],[temperature]])
            except (json.JSONDecodeError, KeyError) as e:
                print(f"Error with file {file_name}: {e}")
    sorted_data = sorted(data, key=lambda x: x[0][0])
    return sorted_data
print(main())
