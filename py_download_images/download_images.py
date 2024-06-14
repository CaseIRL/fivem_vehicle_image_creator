import os
import json
import requests

def download_image(url, save_path):
    response = requests.get(url)
    if response.status_code == 200:
        with open(save_path, 'wb') as file:
            file.write(response.content)
    else:
        print(f"Failed to download {url}")

def main():
    with open("image_urls.json", "r") as file:
        entries = json.load(file)

    if not os.path.exists("images"):
        os.makedirs("images")

    for entry in entries:
        category = entry['category']
        model = entry['model']
        url = entry['url']
        category_dir = os.path.join("images", category)
        if not os.path.exists(category_dir):
            os.makedirs(category_dir)
        filename = os.path.join(category_dir, f"{model}.jpg")
        download_image(url, filename)
        print(f"Downloaded {url} to {filename}")

if __name__ == "__main__":
    main()
