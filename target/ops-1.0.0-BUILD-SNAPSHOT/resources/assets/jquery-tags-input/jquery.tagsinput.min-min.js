(function(e){var d=new Array;var f=new Array;e.fn.doAutosize=function(v){var u=e(this).data("minwidth"),t=e(this).data("maxwidth"),s="",r=e(this),q=e("#"+e(this).data("tester_id"));if(s===(s=r.val())){return}var p=s.replace(/&/g,"&").replace(/\s/g," ").replace(/</g,"<").replace(/>/g,">");q.html(p);var o=q.width(),n=o+v.comfortZone>=u?o+v.comfortZone:u,m=r.width(),a=n<m&&n>=u||n>u&&n<t;if(a){r.width(n)}};e.fn.resetAutosize=function(a){var o=e(this).data("minwidth")||a.minInputWidth||e(this).width(),n=e(this).data("maxwidth")||a.maxInputWidth||e(this).closest(".tagsinput").width()-a.inputPadding,m="",l=e(this),k=e("<tester/>").css({position:"absolute",top:-9999,left:-9999,width:"auto",fontSize:l.css("fontSize"),fontFamily:l.css("fontFamily"),fontWeight:l.css("fontWeight"),letterSpacing:l.css("letterSpacing"),whiteSpace:"nowrap"}),j=e(this).attr("id")+"_autosize_tester";if(!e("#"+j).length>0){k.attr("id",j);k.appendTo("body")}l.data("minwidth",o);l.data("maxwidth",n);l.data("tester_id",j);l.css("width",o)};e.fn.addTag=function(b,a){a=jQuery.extend({focus:false,callback:true},a);this.each(function(){var n=e(this).attr("id");var m=e(this).val().split(d[n]);if(m[0]==""){m=new Array}b=jQuery.trim(b);if(a.unique){var l=e(m).tagExist(b);if(l==true){e("#"+n+"_tag").addClass("not_valid")}}else{var l=false}if(b!=""&&l!=true){e("<span>").addClass("tag").append(e("<span>").text(b).append("  "),e("<a>",{href:"#",title:"Removing tag",text:"x"}).click(function(){return e("#"+n).removeTag(escape(b))})).insertBefore("#"+n+"_addTag");m.push(b);e("#"+n+"_tag").val("");if(a.focus){e("#"+n+"_tag").focus()}else{e("#"+n+"_tag").blur()}e.fn.tagsInput.updateTagsField(this,m);if(a.callback&&f[n]&&f[n]["onAddTag"]){var k=f[n]["onAddTag"];k.call(this,b)}if(f[n]&&f[n]["onChange"]){var c=m.length;var k=f[n]["onChange"];k.call(this,e(this),m[c-1])}}});return false};e.fn.removeTag=function(a){a=unescape(a);this.each(function(){var h=e(this).attr("id");var c=e(this).val().split(d[h]);e("#"+h+"_tagsinput .tag").remove();str="";for(i=0;i<c.length;i++){if(c[i]!=a){str=str+d[h]+c[i]}}e.fn.tagsInput.importTags(this,str);if(f[h]&&f[h]["onRemoveTag"]){var b=f[h]["onRemoveTag"];b.call(this,a)}});return false};e.fn.tagExist=function(a){return jQuery.inArray(a,e(this))>=0};e.fn.importTags=function(a){id=e(this).attr("id");e("#"+id+"_tagsinput .tag").remove();e.fn.tagsInput.importTags(this,a)};e.fn.tagsInput=function(b){var a=jQuery.extend({interactive:true,defaultText:"add a tag",minChars:0,width:"300px",height:"100px",autocomplete:{selectFirst:false},hide:true,delimiter:",",unique:true,removeWithBackspace:true,placeholderColor:"#666666",autosize:true,comfortZone:20,inputPadding:6*2},b);this.each(function(){if(a.hide){e(this).hide()}var j=e(this).attr("id");if(!j||d[e(this).attr("id")]){j=e(this).attr("id","tags"+(new Date).getTime()).attr("id")}var h=jQuery.extend({pid:j,real_input:"#"+j,holder:"#"+j+"_tagsinput",input_wrapper:"#"+j+"_addTag",fake_input:"#"+j+"_tag"},a);d[j]=h.delimiter;if(a.onAddTag||a.onRemoveTag||a.onChange){f[j]=new Array;f[j]["onAddTag"]=a.onAddTag;f[j]["onRemoveTag"]=a.onRemoveTag;f[j]["onChange"]=a.onChange}var c='<div id="'+j+'_tagsinput" class="tagsinput"><div id="'+j+'_addTag">';if(a.interactive){c=c+'<input id="'+j+'_tag" value="" data-default="'+a.defaultText+'" />'}c=c+'</div><div class="tags_clear"></div></div>';e(c).insertAfter(this);e(h.holder).css("width",a.width);e(h.holder).css("height",a.height);if(e(h.real_input).val()!=""){e.fn.tagsInput.importTags(e(h.real_input),e(h.real_input).val())}if(a.interactive){e(h.fake_input).val(e(h.fake_input).attr("data-default"));e(h.fake_input).css("color",a.placeholderColor);e(h.fake_input).resetAutosize(a);e(h.holder).bind("click",h,function(g){e(g.data.fake_input).focus()});e(h.fake_input).bind("focus",h,function(g){if(e(g.data.fake_input).val()==e(g.data.fake_input).attr("data-default")){e(g.data.fake_input).val("")}e(g.data.fake_input).css("color","#000000")});if(a.autocomplete_url!=undefined){autocomplete_options={source:a.autocomplete_url};for(attrname in a.autocomplete){autocomplete_options[attrname]=a.autocomplete[attrname]}if(jQuery.Autocompleter!==undefined){e(h.fake_input).autocomplete(a.autocomplete_url,a.autocomplete);e(h.fake_input).bind("result",h,function(g,l,k){if(l){e("#"+j).addTag(l[0]+"",{focus:true,unique:a.unique})}})}else{if(jQuery.ui.autocomplete!==undefined){e(h.fake_input).autocomplete(autocomplete_options);e(h.fake_input).bind("autocompleteselect",h,function(g,k){e(g.data.real_input).addTag(k.item.value,{focus:true,unique:a.unique});return false})}}}else{e(h.fake_input).bind("blur",h,function(g){var k=e(this).attr("data-default");if(e(g.data.fake_input).val()!=""&&e(g.data.fake_input).val()!=k){if(g.data.minChars<=e(g.data.fake_input).val().length&&(!g.data.maxChars||g.data.maxChars>=e(g.data.fake_input).val().length)){e(g.data.real_input).addTag(e(g.data.fake_input).val(),{focus:true,unique:a.unique})}}else{e(g.data.fake_input).val(e(g.data.fake_input).attr("data-default"));e(g.data.fake_input).css("color",a.placeholderColor)}return false})}e(h.fake_input).bind("keypress",h,function(g){if(g.which==g.data.delimiter.charCodeAt(0)||g.which==13){g.preventDefault();if(g.data.minChars<=e(g.data.fake_input).val().length&&(!g.data.maxChars||g.data.maxChars>=e(g.data.fake_input).val().length)){e(g.data.real_input).addTag(e(g.data.fake_input).val(),{focus:true,unique:a.unique})}e(g.data.fake_input).resetAutosize(a);return false}else{if(g.data.autosize){e(g.data.fake_input).doAutosize(a)}}});h.removeWithBackspace&&e(h.fake_input).bind("keydown",function(g){if(g.keyCode==8&&e(this).val()==""){g.preventDefault();var l=e(this).closest(".tagsinput").find(".tag:last").text();var k=e(this).attr("id").replace(/_tag$/,"");l=l.replace(/[\s]+x$/,"");e("#"+k).removeTag(escape(l));e(this).trigger("focus")}});e(h.fake_input).blur();if(h.unique){e(h.fake_input).keydown(function(g){if(g.keyCode==8||String.fromCharCode(g.which).match(/\w+|[áéíóúÁÉÍÓÚñÑ,/]+/)){e(this).removeClass("not_valid")}})}}});return this};e.fn.tagsInput.updateTagsField=function(g,b){var a=e(g).attr("id");e(g).val(b.join(d[a]))};e.fn.tagsInput.importTags=function(k,j){e(k).val("");var c=e(k).attr("id");var b=j.split(d[c]);for(i=0;i<b.length;i++){e(k).addTag(b[i],{focus:false,callback:false})}if(f[c]&&f[c]["onChange"]){var a=f[c]["onChange"];a.call(k,k,b[i])}}})(jQuery);