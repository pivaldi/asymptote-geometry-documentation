var _____WB$wombat$assign$function_____ = function(name) {return (self._wb_wombat && self._wb_wombat.local_init && self._wb_wombat.local_init(name)) || self[name]; };
if (!self.__WB_pmw) { self.__WB_pmw = function(obj) { this.__WB_source = obj; return this; } }
{
  let window = _____WB$wombat$assign$function_____("window");
  let self = _____WB$wombat$assign$function_____("self");
  let document = _____WB$wombat$assign$function_____("document");
  let location = _____WB$wombat$assign$function_____("location");
  let top = _____WB$wombat$assign$function_____("top");
  let parent = _____WB$wombat$assign$function_____("parent");
  let frames = _____WB$wombat$assign$function_____("frames");
  let opener = _____WB$wombat$assign$function_____("opener");

function pop(src,nom,w,h) {
    open(src,nom,"directories=no,location=no,menubar=no,status=no,titlebar=no,toolbar=no,left=0,top=0,width="+w+",height="+h);
}

function PopupImage(img) {
    titre="Agrandissement";
    w=open("asy-anim",'image','width=400,height=400,directories=no,location=no,menubar=no,status=no,titlebar=no,toolbar=no,scrollbars=no,resizable=no');
    w.document.write("<html><head><title>"+Animation+"</title></head>");
    w.document.write("<script language=javascript>function checksize() { if (document.images[0].complete) { window.resizeto(document.images[0].width+10,document.images[0].height+30); window.focus();} else { settimeout('checksize()',250) } }</"+"script>");
    w.document.write("<body onload='checksize()' onblur='window.close()' leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>");
    w.document.write("<img src='"+img+"' style='border:0' alt='animation'>");
    w.document.write("</body></html>");
    w.document.close();
}


}
/*
     FILE ARCHIVED ON 23:00:57 May 09, 2016 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 13:50:28 Feb 12, 2021.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
*/
/*
playback timings (ms):
  exclusion.robots.policy: 0.234
  CDXLines.iter: 18.41 (3)
  RedisCDXSource: 0.649
  captures_list: 186.031
  esindex: 0.014
  LoadShardBlock: 163.468 (3)
  PetaboxLoader3.resolve: 549.302 (2)
  PetaboxLoader3.datanode: 249.092 (5)
  exclusion.robots: 0.248
  load_resource: 789.551 (2)
*/