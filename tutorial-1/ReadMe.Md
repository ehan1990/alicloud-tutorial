### Tutorial 1: Building, and pushing docker images to AliCloud's Container Registry

In this tutorial, you will

- Learn how to build a simple nginx docker image
- Learn the awesomeness of using alpine base images (they're really small! ~25MB)
- Learn how to create a container registry in Alicloud
- Learn how to push docker image to container registry

#### Step 1:
If you're using Ubuntu 16.04+, you can install docker by running this [script](https://github.com/ehan1990/alicloud-tutorial/blob/master/tutorial-1/misc/install-docker.sh). Otherwise, go [here](https://docs.docker.com/v17.09/engine/installation/)

#### Step 2:
Create a free Alicloud account [here](https://www.alibabacloud.com/campaign/free-trial)

#### Step 3:
Go to container registry console, and create a namespace. You can call it anything you want. I called mine `pandawarrior`.

#### Step 4:
Open your bash terminal and login to your docker registry. 
E.g. Assuming that you're using Hangzhou's DC, your login command should look something like this:
`docker login --username=${EMAIL} registry-intl.cn-hangzhou.aliyuncs.com`

#### Step 5:
Clone this repo (e.g. `git clone https://github.com/ehan1990/alicloud-tutorial.git`)
