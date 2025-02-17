<< task
Deploy a Django App and handle the code for errors
task

code_clone(){
    # Clone the repository
    echo "Cloning the repository.."
    echo "Enter the repository URL:"
    read repo_url
    git clone $repo_url
}

install_requriements(){
    echo "Installing requirements.."
    sudo apt-get install docker.io nginx -y
}

required_restarts(){
    echo "Restarting services.."
    chown $USER /var/run/docker.sock
    sudo systemctl restart docker
    sudo systemctl restart nginx
}

deploy(){
  sudo docker build -t notes-app
  sudo docker run -d -p 8000:8000 notes-app
}

echo "**************Deploy Django App**************"

if ! code_clone; then
    echo "The code directory already exists."
    cd django-notes-app
fi

if ! install_requriements; then
    echo "Error in installing requirements."
fi

if ! required_restarts; then
    echo "Error in restarting services."
    exit 1
fi

deploy

echo "*****************Deployment completed successfully***************"