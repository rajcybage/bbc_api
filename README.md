<html>
  <head>
    <title>BBC API INTEGRATION</title>
  </head>
  <body>
  <h1>BBC WORLD NEWS API Integration</h1>
  <p>
  <a href="https://travis-ci.org/rajcybage/bbc_api"><img src="https://travis-ci.org/rajcybage/bbc_api.png?branch=master" alt="Build Status" /></a>
  </p>
   <div>
     <p>
      Integrate BBC world NEWS API to get all topic(UK newz,headlines,world news,technology newz...) wise newz. You can install it as a desktop application as well as Rails Application
    </p>
   </div>
   <div>
    <h1>System Requirements</h1>
    <p>
      <code>Ruby >= 1.9.3 or jruby >=1.7.x</code><br/>
      <code>rails >= 3.0.x</code>
    </p>
   </div>

   <div>
     <h1> Installation </h1>
     <p>
      In Gemfile
     </p>
     <p>
      <code>gem "bbc_api", git: "https://github.com/rajcybage/bbc_api"</code><br/>
      <span>OR</span><br/>
      <code>gem "bbc_api", "0.1.0" </code>
     </p>
   </div>
   
   <div>
   <h1> USAGE</h1>
   <p>
    <code>require 'bbc_api'</code><br/>
    <code>bbc = BBC::Api.new</code><br/>
    <b>Get The topics</b><br/>
    <code>bbc.topics</code><br/>
    <p><b>It will return all the topics like Headlines,Technology,entertainment,world,uk...etc</b></p>
    <code>bbc.topics.first.stories</code>
    <p><b>It will return the stories or the news of the corresponding topic..</b></p>
    <h2>Now You can access This Attributes of the Story</h2>
    <p><b><code>bbc.topics.first.stories.title</code><span>the title of that newz</span><br/>
    <code>bbc.topics.first.stories.link</code><span>the link of that newz</span><br/>
    <code>bbc.topics.first.stories.image</code><span>the image of that newz</span><br/>
    <code>bbc.topics.first.stories.description</code><span>the description of that newz</span></b>
    </p>
   </p>
 </body>
</html>
