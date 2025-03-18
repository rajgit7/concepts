# #!/bin/bash

# #check whether root user or not
# # Text color variables
# RED="\e[31m"
# GREEN="\e[32m"
# YELLOW="\e[33m"
# BLUE="\e[34m"
# NC="\e[0m" # No Color

# yum install -y yum-utils
# yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
# yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
# systemctl start docker
# systemctl enable docker
# usermod -aG docker ec2-user
# echo -e "$R Logout and Login again $N"
#!/bin/bash

# Define color codes
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
NC="\e[0m" # No Color

# Install required utilities
echo -e "${YELLOW}Installing yum-utils...${NC}"
yum install -y yum-utils

# Add Docker repository
echo -e "${YELLOW}Adding Docker repository...${NC}"
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo

# Install Docker and related packages
echo -e "${YELLOW}Installing Docker and related packages...${NC}"
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Start and enable Docker service
echo -e "${YELLOW}Starting and enabling Docker service...${NC}"
systemctl start docker
systemctl enable docker

# Add ec2-user to the docker group
echo -e "${YELLOW}Adding ec2-user to the docker group...${NC}"
usermod -aG docker ec2-user

# Notify the user to logout and login again
echo -e "${GREEN}Docker installation and setup complete.${NC}"
echo -e "${GREEN}Please logout and login again for the changes to take effect.${NC}"