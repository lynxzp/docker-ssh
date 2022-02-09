# docker-ssh
Docker with ssh service for development purposes for sandbox any changes.  
Service ssh configured to allow root login without password with ssl keys only.

# **IMPORTANT**
Replace authorized_keys with your own public key file!

## Example usage
```
git clone https://github.com/lynxzp/docker-ssh.git
cd docker-ssh
cp ~/.ssh/id_rsa.pub authorized_keys
docker build -t ssh .
docker run -p 10022:22 --rm -d --name ssh-dev-container ssh
```
