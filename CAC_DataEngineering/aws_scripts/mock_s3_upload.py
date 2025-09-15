import boto3
import os

def upload_file_to_s3(file_path, bucket_name, object_name=None):
    s3 = boto3.client('s3')
    if object_name is None:
        object_name = os.path.basename(file_path)
    try:
        s3.upload_file(file_path, bucket_name, object_name)
        print(f"Uploaded {file_path} to {bucket_name}/{object_name}")
    except Exception as e:
        print(f"Error uploading {file_path}: {e}")

# Example usage (mock):
# upload_file_to_s3('data/salesforce_clients.csv', 'mock-bucket')
