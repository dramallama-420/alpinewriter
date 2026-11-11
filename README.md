# Alpine Writer

This is a simple installation script to set up Alpine Linux as a writer deck targeted for non Linux users.

## How to install
Download
 ``` wget https://raw.githubusercontent.com/dramallama-420/alpinewriter/refs/heads/main/writer-setup.sh ```

Make executable
 ```doas chmod +x writer-setup.sh```

Run
 ```./writer-setup.sh```

## About the chosen software
I will include basic launching instructions but most of them will display a help dialog if you run the program with a "-h" after. Also piping through less to make it more readable. 
```[program] -h | less```

### wordgrinder
A really nice and intuitive tui word processor 
```wordgrinder [file]```

### Network Manager and nmtui
Making it easier to connect to wifi with nmtui
```nmtui```

### Midnight commander (mc)
A file manager
```mc```

### nano
a simple text editor that is good for if you ever want to or have to edit configs
```nano [file]```

### rsync
send files over the network.
```rsynce [options] [source] [destination] ```
This is one that can get a little complicated



## using usb drives to save

To use usb drives you will have to manually mount them. To do that you have to do a couple steps.

I recommend creating a directory in your home directory and will be referencing that as the mount location
```doas mkdir ~/usb```

First identify the usb drive:
```doas lsblk```

that will print out every drive on your system. Your main drive will probably be sda. Use the size to identify your USB drive. 

Then mount
```doas mount /dev/[your drive] ~/usb```

 To safely unmount your drive do"
 ```doas umount /dev/[your drive]```
