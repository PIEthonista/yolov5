import os
from tqdm import tqdm

def delete_files_with_extension(folder_path, extension):
    try:
        # Iterate over all files in the folder
        for filename in tqdm(sorted(os.listdir(folder_path))):
            file_path = os.path.join(folder_path, filename)

            # Check if the file has the specified extension
            if filename.endswith(extension):
                # Delete the file
                os.remove(file_path)
                print(f"Deleted: {filename}")

        print("Deletion complete.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage:
folder_path = "/work/u5832291/yixian/yolov5_edit/runs/val/YOLOv5s_m3fd_vi_tardal_baseline_val_set_removed_20231206_yx/labels"
extension_to_delete = ".png"  # Change this to your desired extension

delete_files_with_extension(folder_path, extension_to_delete)
