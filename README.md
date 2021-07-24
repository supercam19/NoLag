# Description

NoLag by supercam19

https://www.github.com/supercam19/NoLag

  
A datapack for Minecraft 1.17+ to increase performance on your Minecraft server.

This is a datapack made by supercam19 to improve server performance. It is reccomended for vanilla servers but can also be used on custom server jars!

# Installation

--Getting to your datapack folder--

Go to the [latest release for NoLag](https://github.com/supercam19/NoLag/releases), and download the NoLag.zip attached to the release.

1. Open Minecraft
2. Select the world you want to put the datapack on
3. Click edit > Open World Folder
4. Open the "datapacks" folder

To install the datapack, extract the NoLag.zip and place it in your datapacks folder.

To know if its installed correctly, you file path should be /.minecraft/saves/{worldName}/datapacks/NoLag.
Inside this folder you should find a file called "pack.mcmeta" thats how you know it is installed properly.
If there is no "pack.mcmeta" in that path, it is not installed correctly.

If there is no "pack.mcmeta" in that folder, it is not installed correctly.


# 📃 Configuration


To configure the datapack, go to you datapacks folder for the world. Then go NoLag/data/nolag_config/functions/config.mcfunction.
 

If you want to also change the what happens when you run function nolag:cmd/clearlag, function nolag:cmd/killmobs or function nolag:cmd/clearprojectiles, go to NoLag/data/nolag_config/tags/entity_types/ and edit the .json file you wish.

# 🛠 How to use the datapack

In game, run "/function nl:help" to see all in game commands. Other than that, it will mostly run automatically.

# ✋ Bug reports and suggestions

Bug reports and suggestions can be made on Github, under the "issues" tab.

# ♻ Updating and uninstalling

To update the pack, delete the old one and follow the installation instructions above. The datapack will load the next time you start the server. Make sure to check the configuration file!

To uninstall, go in game and run the command "/function nl:uninstall". Follow the chat instructions. Make sure you delete the "NoLag" folder from your datapacks folder before restarting your server!

# Configuration

To configure the datapack, go to you datapacks folder for the world. Then go NoLag/data/nolag_config/functions/config.mcfunction.

If you want to also change the what happens when you run function nolag:cmd/clearlag, function nolag:cmd/killmobs or function nolag:cmd/clearprojectiles, go to NoLag/data/nolag_config/tags/entity_types/ and edit the .json file you wish.
