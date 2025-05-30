<%-- 
    Document   : PuzzleAes
    Created on : 11 Mar, 2016, 10:56:11 PM
    Author     : Java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html><!--[if lt IE 7]>    
  <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]--><!--[if IE 7]>      
  <html class="no-js lt-ie9 lt-ie8"> <![endif]--><!--[if IE 8]>      
  <html class="no-js lt-ie9"> 
  <![endif]--><!--[if gt IE 8]>
  <!--><html class=no-js>
  <!--<![endif]-->
  
  
  <head><meta charset=utf-8><meta http-equiv=X-UA-Compatible content="IE=edge">
  <title>Image Puzzle</title>

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
  <link rel=stylesheet href=styles/6a9a8eb9.vendor.css>
  <link rel=stylesheet href=styles/d2f6eea1.main.css>
  <script src=bower_components/modernizr/modernizr.js></script>
  <body id=body><!--[if lt IE 10]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]--><div class=container><div class=header><ul class="nav nav-pills pull-right"><li>
		
		
                        <%
            String Account_NO=session.getAttribute("Account_no").toString();
        //String user="kalai";
            %>
                      
                     <li><a href="Index.jsp" >home <%=Account_NO %></a></li>  
                      
                      
                      
                      
                      
		
		<p><!-- responsive-ad -->
		<script async src=//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js></script>
		<ins class=adsbygoogle style=display:block data-ad-client=ca-pub-6794644097825747 data-ad-slot=8919777537 data-ad-format=auto>
		</ins><script>(adsbygoogle = window.adsbygoogle || []).push({});</script></p>
                        
                        <p><button id=play-btn-lg type=button class="btn btn-success btn-lg"><center>PLAY</center></button>
		
		
		</p></div>
		
		
		<ins class=adsbygoogle style=display:block data-ad-client=ca-pub-6794644097825747 data-ad-slot=8919777537 data-ad-format=auto>
		</ins><script>(adsbygoogle = window.adsbygoogle || []).push({});</script></p><div class=footer>
		
		</p></div></div><ul class="nav nav-pills abs"><li id=home>
		<button id=btn-home type=button class="btn btn-xs btn-default"><span class="glyphicon glyphicon-home">
		
		</span> Home</button></li><li id=play><button id=btn-play type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-play">
		</span> Play</button></li><li id=pause class=control>
		<button id=btn-pause type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-pause"></span> Pause</button>
		</li><li id=fullscreen class=control>
		<button id=btn-fullscreen type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-fullscreen">
		</span> Fullscreen</button></li><li id=exitfullscreen class=control>
		<button id=btn-exitfullscreen type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-resize-small">
		</span> Exit Fullscreen</button></li><li id=bgm class=control>
		<button id=btn-bmg-on type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-volume-up"></span> BGM On</button>
		</li><li id=bgmoff class=control>
		<button id=btn-bmg-off type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-volume-off"></span> BGM Off</button>
		</li><li id=sfx class=control>
		<button id=btn-sfx-on type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-volume-up">
		</span> SFX On</button></li><li id=sfxoff class=control>
		<button id=btn-sfx-off type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-volume-off"></span> SFX Off</button>
		</li><li id=autosnap class=control>
		<button id=btn-autosnap-on type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-remove">
		</span> Auto-Snap On</button></li><li id=autosnapoff class=control>
		<button id=btn-autosnap-off type=button class="btn btn-xs btn-default">
		<span class="glyphicon glyphicon-ok"></span> Auto-Snap Off</button>
		</li></ul><!-- Game modal -->
		<div id=modal-success class="modal fade show" tabindex=-1 role=dialog aria-labelledby=myModalLabel aria-hidden=true>
		<div class=modal-dialog><div class=modal-content>
		<div class=modal-header><button type=button class=close data-dismiss=modal aria-hidden=true>&times;</button>
		
		
                    <form name="form" method="post" action="AesOtp"  id ="frm">	
   
                        <h1>Level 3 completed</h1>
                   
		  <button type="submit" value="LogIn" id="Ulogin">Submit  </button>
		
		
                </form>
		</div></div><!-- /.modal-content --></div><!-- /.modal-dialog -->
		</div><!-- /.modal --><!-- Game canvas -->
		<div id=game>
		<canvas id=canvas style=display:none></canvas>
		<canvas id=canvas_bg style=display:none></canvas>
		</div><!-- DEBUG/IMAGES --><div id=debug style=display:none><div>
		<audio id=audio-drip controls="">
		<source type=audio/ogg src=audio/final/drip.ogg>
		<source type=audio/mpeg src=audio/final/drip.mp3>Your browser does not support the audio element.</source>
		</source></audio><audio id=audio-twang controls="">
		<source type=audio/ogg src=audio/final/twang2.ogg>
		<source type=audio/mpeg src=audio/final/twang2.mp3>Your browser does not support the audio element.</source>
		</source></audio><audio id=audio-bgm controls="">
		<source type=audio/ogg src=audio/final/Pictures-Sleep_on_soft_sheets.ogg>
		<source type=audio/mpeg src=audio/final/Pictures-Sleep_on_soft_sheets.mp3>Your browser does not support the audio element.</source>
		</source></audio><audio id=audio-chimes controls="">
		<source type=audio/ogg src=audio/final/chimes.ogg>
		<source type=audio/mpeg src=audio/final/chimes.mp3>Your browser does not support the audio element.</source>
		</source></audio></div><div>
		
		<img src=images/puzzle/<%=Account_NO %>/0.jpg id=img09> 
		
		</div>
		<div>pieces:<input name=p id=p>pieces placed:<input name=pp id=pp>lines:<input name=l id=l>Pieces width:<input name=pw id=pw>Pieces height:<input name=ph id=ph></div><div>moving:<input name=moving id=moving>over:<input name=over id=over>selected:<input name=selected id=selected></div><div>x:<input name=mx id=mx>y:<input name=my id=my></div><div>p1 x:<input name=px id=px>p1 y:<input name=py id=py></div>
		<div>h1 x:<input name=hx id=hx>h1 y:<input name=hy id=hy></div>
		<div>h2 x:<input name=hx2 id=hx2>h2 y:<input name=hy2 id=hy2></div>
		</div><!-- /DEBUG -->
		<script src=scripts/eeb11086.vendor.js>
		</script><!-- Google Analytics --><script>
		(function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-31142108-1');ga('send','pageview');</script><script src=scripts/c6b52431.plugins.js></script><script src=scripts/b008f805.main.js></script>