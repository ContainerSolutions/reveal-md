# Container Solutions reveal-md template

[![](https://images.microbadger.com/badges/image/containersol/reveal-md.svg)](http://microbadger.com/images/containersol/reveal-md "Get your own image badge on microbadger.com")

Reveal-md theme for [Container Solutions](http://container-solutions.com)

# Running natively

```
npm install -g reveal-md
reveal-md --css resources/cs.css slides.md
```

# Running with Docker

- **Step 1** Build with docker:
   ```
   docker build -t containersol/reveal-md .

   ```

- **Step 2** Run with docker:
   ```
   docker run --rm -ti -p 8000:1948 -v `pwd`/resources:/usr/src/app/slides.md containersol/reveal-md
   ```

---

You can use the the test slides to get an idea for the formatting.

```
docker run -d -p 8000:1948 containersol/reveal-md demo
```

---

If you need to include other files e.g. images, keep them with the presentation file and just mount the directory e.g:

```
docker run -d -p 8000:1948 -v /my/slide/dir:/usr/src/app/ containersol/reveal-md:latest
```

---

To build your own version just clone https://github.com/webpro/reveal-md and modify the Dockerfile as you want

# Viewing the slides

Now go to http://localhost:8000 in your browser.


#New Options 

####To show the text on left column add:

showLeftCol: 'true' 

####To edit left column on first slide you can add  the following options in your md file:

subtitle: your subtitle   
authors: yourname  
date: date  
twitter: '@twitter'  
email: 'email@email.com'  
job-title: Developer  
 

####To remove the styling of the first page and have all slides just with footer :

hideFirstStyle: 'true'  

####For having text in the footer of the slides add :

showFooterText : 'true'  

####For editing the footer text use :

email: 'email@email.com'    
title: your slides title  
twitter: '@twitter'  
  **the website url is hardcoded*  


####For exporting as pdf or printing the slides add ?print-pdf after the url like so (http://localhost:8000/slide.md?print-pdf) and use the print option - save as pdf of your browser
