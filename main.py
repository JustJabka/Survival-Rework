import os
import json

def calculate_temperature_range(temp):
    if temp >= 0:
        return [int((temp * 2500 + 500) * 0.6), int(temp * 2500 + 500)]
    else:
        return [int(temp * 2500 - 1250), int(temp * 2500 - 250)]

def find_json_files(directory):
    return [f for f in os.listdir(directory) if f.endswith('.json')]

def extract_temperature_data(directory):
    biome_temperatures = {}
    json_files = find_json_files(directory)
    
    for file in json_files:
        biome = os.path.splitext(file)[0]
        with open(os.path.join(directory, file), 'r', encoding='utf-8') as f:
            try:
                data = json.load(f)
                if "temperature" in data:
                    temperature = data["temperature"]
                    biome_temperatures[biome] = calculate_temperature_range(temperature)
            except json.JSONDecodeError:
                print(f"Error reading a file: {file}")
    
    return biome_temperatures

def generate_file(biome_temperatures, output_file):
    with open(output_file, 'w', encoding='utf-8') as f:
        for biome, temp_range in biome_temperatures.items():
            f.write(f"execute if biome ~ ~ ~ {biome} run return run data modify storage survival_rework_jj:main temperature set value {temp_range}\n")

def main():
    directory = os.getcwd()
    output_file = "temperatures.mcfunction"
    
    biome_temperatures = extract_temperature_data(directory)
    if biome_temperatures:
        generate_file(biome_temperatures, output_file)
        print(f"File {output_file} successfully created")
    else:
        print("Cannot found any json file with temperature data")

if __name__ == "__main__":
    main()