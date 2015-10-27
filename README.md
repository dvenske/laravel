# Base Image Creed
This is my base image. There are many like it, but this one is mine.

My base image is my best friend. It is my life. I must master it as I must master my life.

My base image, without me, is useless. Without my base image, I am useless. I must fire my base image true. I must shoot straighter than my enemy who is trying to kill me. I must shoot him before he shoots me. I will…

My base image and I know that what counts in war is not the rounds we fire, the noise of our burst, nor the smoke we make. We know that it is the hits that count. We will hit…

My base image is human, even as I, because it is my life. Thus, I will learn it as a brother. I will learn its weaknesses, its strength, its parts, its accessories, its sights and its barrel. I will keep my base image clean and ready, even as I am clean and ready. We will become part of each other. We will…

Before God, I swear this creed. My base image and I are the defenders of my country. We are the masters of our enemy. We are the saviors of my life.

So be it, until victory is America's and there are no other base images, but peace!


### Sending email
If you do not need to send email with this base container, then please skip this section!

If you _do_ need to send email, then it would be my recommendation to build your own image, using this as a base image!

Update your ssmtp.conf file to use your own gmail credentials. You can find the ssmtp.conf file here: https://github.com/kcmerrill/base. Here is what your docker file might look like after you edit ssmtp.conf

```
FROM kcmerrill/base
COPY ssmtp.conf /etc/ssmtp/ssmtp.conf
```

To use it with PHP it should just work by default. If you notice that email is sent from www-data, in your mail function, you can try this:

```
mail('nobody@example.com', 'the subject', 'the message', null, '-fwebmaster@example.com');
```
