(function(){var a;a=(function(){function b(){this.options_index=0;this.parsed=[]}b.prototype.add_node=function(c){if(c.nodeName.toUpperCase()==="OPTGROUP"){return this.add_group(c)}else{return this.add_option(c)}};b.prototype.add_group=function(i){var h,e,g,d,f,c;h=this.parsed.length;this.parsed.push({array_index:h,group:true,label:i.label,children:0,disabled:i.disabled});f=i.childNodes;c=[];for(g=0,d=f.length;g<d;g++){e=f[g];c.push(this.add_option(e,h,i.disabled))}return c};b.prototype.add_option=function(d,e,c){if(d.nodeName.toUpperCase()==="OPTION"){if(d.text!==""){if(e!=null){this.parsed[e].children+=1}this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,value:d.value,text:d.text,html:d.innerHTML,selected:d.selected,disabled:c===true?c:d.disabled,group_array_index:e,classes:d.className,style:d.style.cssText})}else{this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,empty:true})}return this.options_index+=1}};return b})();a.select_to_array=function(b){var g,f,e,c,d;f=new a();d=b.childNodes;for(e=0,c=d.length;e<c;e++){g=d[e];f.add_node(g)}return f.parsed};this.SelectParser=a}).call(this);(function(){var b,a;a=this;b=(function(){function c(d,e){this.form_field=d;this.options=e!=null?e:{};if(!c.browser_is_supported()){return}this.is_multiple=this.form_field.multiple;this.set_default_text();this.set_default_values();this.setup();this.set_up_html();this.register_observers();this.finish_setup()}c.prototype.set_default_values=function(){var d=this;this.click_test_action=function(e){return d.test_active_click(e)};this.activate_action=function(e){return d.activate_field(e)};this.active_field=false;this.mouse_on_container=false;this.results_showing=false;this.result_highlighted=null;this.result_single_selected=null;this.allow_single_deselect=(this.options.allow_single_deselect!=null)&&(this.form_field.options[0]!=null)&&this.form_field.options[0].text===""?this.options.allow_single_deselect:false;this.disable_search_threshold=this.options.disable_search_threshold||0;this.disable_search=this.options.disable_search||false;this.enable_split_word_search=this.options.enable_split_word_search!=null?this.options.enable_split_word_search:true;this.search_contains=this.options.search_contains||false;this.single_backstroke_delete=this.options.single_backstroke_delete||false;this.max_selected_options=this.options.max_selected_options||Infinity;return this.inherit_select_classes=this.options.inherit_select_classes||false};c.prototype.set_default_text=function(){if(this.form_field.getAttribute("data-placeholder")){this.default_text=this.form_field.getAttribute("data-placeholder")}else{if(this.is_multiple){this.default_text=this.options.placeholder_text_multiple||this.options.placeholder_text||c.default_multiple_text}else{this.default_text=this.options.placeholder_text_single||this.options.placeholder_text||c.default_single_text}}return this.results_none_found=this.form_field.getAttribute("data-no_results_text")||this.options.no_results_text||c.default_no_result_text};c.prototype.mouse_enter=function(){return this.mouse_on_container=true};c.prototype.mouse_leave=function(){return this.mouse_on_container=false};c.prototype.input_focus=function(d){var e=this;if(this.is_multiple){if(!this.active_field){return setTimeout((function(){return e.container_mousedown()}),50)}}else{if(!this.active_field){return this.activate_field()}}};c.prototype.input_blur=function(d){var e=this;if(!this.mouse_on_container){this.active_field=false;return setTimeout((function(){return e.blur_test()}),100)}};c.prototype.result_add_option=function(f){var d,e;f.dom_id=this.container_id+"_o_"+f.array_index;d=[];if(!f.disabled&&!(f.selected&&this.is_multiple)){d.push("active-result")}if(f.disabled&&!(f.selected&&this.is_multiple)){d.push("disabled-result")}if(f.selected){d.push("result-selected")}if(f.group_array_index!=null){d.push("group-option")}if(f.classes!==""){d.push(f.classes)}e=f.style.cssText!==""?' style="'+f.style+'"':"";return'<li id="'+f.dom_id+'" class="'+d.join(" ")+'"'+e+">"+f.html+"</li>"};c.prototype.results_update_field=function(){this.set_default_text();if(!this.is_multiple){this.results_reset_cleanup()}this.result_clear_highlight();this.result_single_selected=null;return this.results_build()};c.prototype.results_toggle=function(){if(this.results_showing){return this.results_hide()}else{return this.results_show()}};c.prototype.results_search=function(d){if(this.results_showing){return this.winnow_results()}else{return this.results_show()}};c.prototype.choices_count=function(){var e,g,d,f;if(this.selected_option_count!=null){return this.selected_option_count}this.selected_option_count=0;f=this.form_field.options;for(g=0,d=f.length;g<d;g++){e=f[g];if(e.selected){this.selected_option_count+=1}}return this.selected_option_count};c.prototype.choices_click=function(d){d.preventDefault();if(!(this.results_showing||this.is_disabled)){return this.results_show()}};c.prototype.keyup_checker=function(d){var f,e;f=(e=d.which)!=null?e:d.keyCode;this.search_field_scale();switch(f){case 8:if(this.is_multiple&&this.backstroke_length<1&&this.choices_count()>0){return this.keydown_backstroke()}else{if(!this.pending_backstroke){this.result_clear_highlight();return this.results_search()}}break;case 13:d.preventDefault();if(this.results_showing){return this.result_select(d)}break;case 27:if(this.results_showing){this.results_hide()}return true;case 9:case 38:case 40:case 16:case 91:case 17:break;default:return this.results_search()}};c.prototype.generate_field_id=function(){var d;d=this.generate_random_id();this.form_field.id=d;return d};c.prototype.generate_random_char=function(){var f,e,d;f="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";d=Math.floor(Math.random()*f.length);return e=f.substring(d,d+1)};c.prototype.container_width=function(){if(this.options.width!=null){return this.options.width}else{return""+this.form_field.offsetWidth+"px"}};c.browser_is_supported=function(){var d;if(window.navigator.appName==="Microsoft Internet Explorer"){return(null!==(d=document.documentMode)&&d>=8)}return true};c.default_multiple_text="Select Some Options";c.default_single_text="Select an Option";c.default_no_result_text="No results match";return c})();a.AbstractChosen=b}).call(this);(function(){var e,a,d,b={}.hasOwnProperty,c=function(i,g){for(var f in g){if(b.call(g,f)){i[f]=g[f]}}function h(){this.constructor=i}h.prototype=g.prototype;i.prototype=new h();i.__super__=g.prototype;return i};a=this;e=(function(f){c(g,f);function g(){d=g.__super__.constructor.apply(this,arguments);return d}g.prototype.setup=function(){this.current_selectedIndex=this.form_field.selectedIndex;return this.is_rtl=this.form_field.hasClassName("chzn-rtl")};g.prototype.finish_setup=function(){return this.form_field.addClassName("chzn-done")};g.prototype.set_default_values=function(){g.__super__.set_default_values.call(this);this.single_temp=new Template('<a href="javascript:void(0)" class="chzn-single chzn-default" tabindex="-1"><span>#{default}</span><div><b></b></div></a><div class="chzn-drop"><div class="chzn-search"><input type="text" autocomplete="off" /></div><ul class="chzn-results"></ul></div>');this.multi_temp=new Template('<ul class="chzn-choices"><li class="search-field"><input type="text" value="#{default}" class="default" autocomplete="off" style="width:25px;" /></li></ul><div class="chzn-drop"><ul class="chzn-results"></ul></div>');return this.no_results_temp=new Template('<li class="no-results">'+this.results_none_found+' "<span>#{terms}</span>"</li>')};g.prototype.set_up_html=function(){var h,i;this.container_id=this.form_field.identify().replace(/[^\w]/g,"_")+"_chzn";h=["chzn-container"];h.push("chzn-container-"+(this.is_multiple?"multi":"single"));if(this.inherit_select_classes&&this.form_field.className){h.push(this.form_field.className)}if(this.is_rtl){h.push("chzn-rtl")}i={id:this.container_id,"class":h.join(" "),style:"width: "+(this.container_width())+";",title:this.form_field.title};this.container=this.is_multiple?new Element("div",i).update(this.multi_temp.evaluate({"default":this.default_text})):new Element("div",i).update(this.single_temp.evaluate({"default":this.default_text}));this.form_field.hide().insert({after:this.container});this.dropdown=this.container.down("div.chzn-drop");this.search_field=this.container.down("input");this.search_results=this.container.down("ul.chzn-results");this.search_field_scale();this.search_no_results=this.container.down("li.no-results");if(this.is_multiple){this.search_choices=this.container.down("ul.chzn-choices");this.search_container=this.container.down("li.search-field")}else{this.search_container=this.container.down("div.chzn-search");this.selected_item=this.container.down(".chzn-single")}this.results_build();this.set_tab_index();this.set_label_behavior();return this.form_field.fire("liszt:ready",{chosen:this})};g.prototype.register_observers=function(){var h=this;this.container.observe("mousedown",function(i){return h.container_mousedown(i)});this.container.observe("mouseup",function(i){return h.container_mouseup(i)});this.container.observe("mouseenter",function(i){return h.mouse_enter(i)});this.container.observe("mouseleave",function(i){return h.mouse_leave(i)});this.search_results.observe("mouseup",function(i){return h.search_results_mouseup(i)});this.search_results.observe("mouseover",function(i){return h.search_results_mouseover(i)});this.search_results.observe("mouseout",function(i){return h.search_results_mouseout(i)});this.search_results.observe("mousewheel",function(i){return h.search_results_mousewheel(i)});this.search_results.observe("DOMMouseScroll",function(i){return h.search_results_mousewheel(i)});this.form_field.observe("liszt:updated",function(i){return h.results_update_field(i)});this.form_field.observe("liszt:activate",function(i){return h.activate_field(i)});this.form_field.observe("liszt:open",function(i){return h.container_mousedown(i)});this.search_field.observe("blur",function(i){return h.input_blur(i)});this.search_field.observe("keyup",function(i){return h.keyup_checker(i)});this.search_field.observe("keydown",function(i){return h.keydown_checker(i)});this.search_field.observe("focus",function(i){return h.input_focus(i)});if(this.is_multiple){return this.search_choices.observe("click",function(i){return h.choices_click(i)})}else{return this.container.observe("click",function(i){return i.preventDefault()})}};g.prototype.search_field_disabled=function(){this.is_disabled=this.form_field.disabled;if(this.is_disabled){this.container.addClassName("chzn-disabled");this.search_field.disabled=true;if(!this.is_multiple){this.selected_item.stopObserving("focus",this.activate_action)}return this.close_field()}else{this.container.removeClassName("chzn-disabled");this.search_field.disabled=false;if(!this.is_multiple){return this.selected_item.observe("focus",this.activate_action)}}};g.prototype.container_mousedown=function(h){if(!this.is_disabled){if(h&&h.type==="mousedown"&&!this.results_showing){h.stop()}if(!((h!=null)&&h.target.hasClassName("search-choice-close"))){if(!this.active_field){if(this.is_multiple){this.search_field.clear()}document.observe("click",this.click_test_action);this.results_show()}else{if(!this.is_multiple&&h&&(h.target===this.selected_item||h.target.up("a.chzn-single"))){this.results_toggle()}}return this.activate_field()}}};g.prototype.container_mouseup=function(h){if(h.target.nodeName==="ABBR"&&!this.is_disabled){return this.results_reset(h)}};g.prototype.search_results_mousewheel=function(h){var i;i=-h.wheelDelta||h.detail;if(i!=null){h.preventDefault();if(h.type==="DOMMouseScroll"){i=i*40}return this.search_results.scrollTop=i+this.search_results.scrollTop}};g.prototype.blur_test=function(h){if(!this.active_field&&this.container.hasClassName("chzn-container-active")){return this.close_field()}};g.prototype.close_field=function(){document.stopObserving("click",this.click_test_action);this.active_field=false;this.results_hide();this.container.removeClassName("chzn-container-active");this.clear_backstroke();this.show_search_field_default();return this.search_field_scale()};g.prototype.activate_field=function(){this.container.addClassName("chzn-container-active");this.active_field=true;this.search_field.value=this.search_field.value;return this.search_field.focus()};g.prototype.test_active_click=function(h){if(h.target.up("#"+this.container_id)){return this.active_field=true}else{return this.close_field()}};g.prototype.results_build=function(){var j,l,k,i,h;this.parsing=true;this.selected_option_count=null;this.results_data=a.SelectParser.select_to_array(this.form_field);if(this.is_multiple){this.search_choices.select("li.search-choice").invoke("remove")}else{if(!this.is_multiple){this.selected_item.addClassName("chzn-default").down("span").update(this.default_text);if(this.disable_search||this.form_field.options.length<=this.disable_search_threshold){this.search_field.readOnly=true;this.container.addClassName("chzn-container-single-nosearch")}else{this.search_field.readOnly=false;this.container.removeClassName("chzn-container-single-nosearch")}}}j="";h=this.results_data;for(k=0,i=h.length;k<i;k++){l=h[k];if(l.group){j+=this.result_add_group(l)}else{if(!l.empty){j+=this.result_add_option(l);if(l.selected&&this.is_multiple){this.choice_build(l)}else{if(l.selected&&!this.is_multiple){this.selected_item.removeClassName("chzn-default").down("span").update(l.html);if(this.allow_single_deselect){this.single_deselect_control_build()}}}}}}this.search_field_disabled();this.show_search_field_default();this.search_field_scale();this.search_results.update(j);return this.parsing=false};g.prototype.result_add_group=function(h){h.dom_id=this.container_id+"_g_"+h.array_index;return'<li id="'+h.dom_id+'" class="group-result">'+h.label.escapeHTML()+"</li>"};g.prototype.result_do_highlight=function(i){var m,l,j,k,h;this.result_clear_highlight();this.result_highlight=i;this.result_highlight.addClassName("highlighted");j=parseInt(this.search_results.getStyle("maxHeight"),10);h=this.search_results.scrollTop;k=j+h;l=this.result_highlight.positionedOffset().top;m=l+this.result_highlight.getHeight();if(m>=k){return this.search_results.scrollTop=(m-j)>0?m-j:0}else{if(l<h){return this.search_results.scrollTop=l}}};g.prototype.result_clear_highlight=function(){if(this.result_highlight){this.result_highlight.removeClassName("highlighted")}return this.result_highlight=null};g.prototype.results_show=function(){if(this.is_multiple&&this.max_selected_options<=this.choices_count()){this.form_field.fire("liszt:maxselected",{chosen:this});return false}this.container.addClassName("chzn-with-drop");this.form_field.fire("liszt:showing_dropdown",{chosen:this});this.results_showing=true;this.search_field.focus();this.search_field.value=this.search_field.value;return this.winnow_results()};g.prototype.results_hide=function(){if(this.results_showing){this.result_clear_highlight();this.container.removeClassName("chzn-with-drop");this.form_field.fire("liszt:hiding_dropdown",{chosen:this})}return this.results_showing=false};g.prototype.set_tab_index=function(i){var h;if(this.form_field.tabIndex){h=this.form_field.tabIndex;this.form_field.tabIndex=-1;return this.search_field.tabIndex=h}};g.prototype.set_label_behavior=function(){var h=this;this.form_field_label=this.form_field.up("label");if(this.form_field_label==null){this.form_field_label=$$("label[for='"+this.form_field.id+"']").first()}if(this.form_field_label!=null){return this.form_field_label.observe("click",function(i){if(h.is_multiple){return h.container_mousedown(i)}else{return h.activate_field()}})}};g.prototype.show_search_field_default=function(){if(this.is_multiple&&this.choices_count()<1&&!this.active_field){this.search_field.value=this.default_text;return this.search_field.addClassName("default")}else{this.search_field.value="";return this.search_field.removeClassName("default")}};g.prototype.search_results_mouseup=function(h){var i;i=h.target.hasClassName("active-result")?h.target:h.target.up(".active-result");if(i){this.result_highlight=i;this.result_select(h);return this.search_field.focus()}};g.prototype.search_results_mouseover=function(h){var i;i=h.target.hasClassName("active-result")?h.target:h.target.up(".active-result");if(i){return this.result_do_highlight(i)}};g.prototype.search_results_mouseout=function(h){if(h.target.hasClassName("active-result")||h.target.up(".active-result")){return this.result_clear_highlight()}};g.prototype.choice_build=function(i){var h,j,k=this;h=new Element("li",{"class":"search-choice"}).update("<span>"+i.html+"</span>");if(i.disabled){h.addClassName("search-choice-disabled")}else{j=new Element("a",{href:"#","class":"search-choice-close",rel:i.array_index});j.observe("click",function(l){return k.choice_destroy_link_click(l)});h.insert(j)}return this.search_container.insert({before:h})};g.prototype.choice_destroy_link_click=function(h){h.preventDefault();h.stopPropagation();if(!this.is_disabled){return this.choice_destroy(h.target)}};g.prototype.choice_destroy=function(h){if(this.result_deselect(h.readAttribute("rel"))){this.show_search_field_default();if(this.is_multiple&&this.choices_count()>0&&this.search_field.value.length<1){this.results_hide()}h.up("li").remove();return this.search_field_scale()}};g.prototype.results_reset=function(){this.form_field.options[0].selected=true;this.selected_option_count=null;this.selected_item.down("span").update(this.default_text);if(!this.is_multiple){this.selected_item.addClassName("chzn-default")}this.show_search_field_default();this.results_reset_cleanup();if(typeof Event.simulate==="function"){this.form_field.simulate("change")}if(this.active_field){return this.results_hide()}};g.prototype.results_reset_cleanup=function(){var h;this.current_selectedIndex=this.form_field.selectedIndex;h=this.selected_item.down("abbr");if(h){return h.remove()}};g.prototype.result_select=function(i){var k,j,h;if(this.result_highlight){k=this.result_highlight;this.result_clear_highlight();if(this.is_multiple&&this.max_selected_options<=this.choices_count()){this.form_field.fire("liszt:maxselected",{chosen:this});return false}if(this.is_multiple){k.removeClassName("active-result")}else{this.search_results.descendants(".result-selected").invoke("removeClassName","result-selected");this.selected_item.removeClassName("chzn-default");this.result_single_selected=k}k.addClassName("result-selected");h=k.id.substr(k.id.lastIndexOf("_")+1);j=this.results_data[h];j.selected=true;this.form_field.options[j.options_index].selected=true;this.selected_option_count=null;if(this.is_multiple){this.choice_build(j)}else{this.selected_item.down("span").update(j.html);if(this.allow_single_deselect){this.single_deselect_control_build()}}if(!((i.metaKey||i.ctrlKey)&&this.is_multiple)){this.results_hide()}this.search_field.value="";if(typeof Event.simulate==="function"&&(this.is_multiple||this.form_field.selectedIndex!==this.current_selectedIndex)){this.form_field.simulate("change")}this.current_selectedIndex=this.form_field.selectedIndex;return this.search_field_scale()}};g.prototype.result_activate=function(i,h){if(h.disabled){return i.addClassName("disabled-result")}else{if(this.is_multiple&&h.selected){return i.addClassName("result-selected")}else{return i.addClassName("active-result")}}};g.prototype.result_deactivate=function(h){h.removeClassName("active-result");h.removeClassName("result-selected");return h.removeClassName("disabled-result")};g.prototype.result_deselect=function(j){var h,i;i=this.results_data[j];if(!this.form_field.options[i.options_index].disabled){i.selected=false;this.form_field.options[i.options_index].selected=false;this.selected_option_count=null;h=$(this.container_id+"_o_"+j);h.removeClassName("result-selected").addClassName("active-result").show();this.result_clear_highlight();this.winnow_results();if(typeof Event.simulate==="function"){this.form_field.simulate("change")}this.search_field_scale();return true}else{return false}};g.prototype.single_deselect_control_build=function(){if(!this.allow_single_deselect){return}if(!this.selected_item.down("abbr")){this.selected_item.down("span").insert({after:'<abbr class="search-choice-close"></abbr>'})}return this.selected_item.addClassName("chzn-single-with-deselect")};g.prototype.winnow_results=function(){var x,p,j,n,t,u,r,o,w,q,v,i,m,l,s,h,k;this.no_results_clear();o=0;w=this.search_field.value===this.default_text?"":this.search_field.value.strip().escapeHTML();u=this.search_contains?"":"^";t=new RegExp(u+w.replace(/[-[\]{}()*+?.,\\^$|#\s]/g,"\\$&"),"i");i=new RegExp(w.replace(/[-[\]{}()*+?.,\\^$|#\s]/g,"\\$&"),"i");k=this.results_data;for(m=0,s=k.length;m<s;m++){p=k[m];if(!p.empty){if(p.group){$(p.dom_id).hide()}else{x=false;r=p.dom_id;if(t.test(p.html)){x=true;o+=1}else{if(this.enable_split_word_search&&(p.html.indexOf(" ")>=0||p.html.indexOf("[")===0)){n=p.html.replace(/\[|\]/g,"").split(" ");if(n.length){for(l=0,h=n.length;l<h;l++){j=n[l];if(t.test(j)){x=true;o+=1}}}}}if(x){if(w.length){q=p.html.search(i);v=p.html.substr(0,q+w.length)+"</em>"+p.html.substr(q+w.length);v=v.substr(0,q)+"<em>"+v.substr(q)}else{v=p.html}if($(r).innerHTML!==v){$(r).update(v)}this.result_activate($(r),p);if(p.group_array_index!=null){$(this.results_data[p.group_array_index].dom_id).setStyle({display:"list-item"})}}else{if($(r)===this.result_highlight){this.result_clear_highlight()}this.result_deactivate($(r))}}}}if(o<1&&w.length){return this.no_results(w)}else{return this.winnow_results_set_highlight()}};g.prototype.winnow_results_set_highlight=function(){var h;if(!this.result_highlight){if(!this.is_multiple){h=this.search_results.down(".result-selected.active-result")}if(h==null){h=this.search_results.down(".active-result")}if(h!=null){return this.result_do_highlight(h)}}};g.prototype.no_results=function(h){return this.search_results.insert(this.no_results_temp.evaluate({terms:h}))};g.prototype.no_results_clear=function(){var i,h;i=null;h=[];while(i=this.search_results.down(".no-results")){h.push(i.remove())}return h};g.prototype.keydown_arrow=function(){var h;if(this.results_showing&&this.result_highlight){h=this.result_highlight.next(".active-result");if(h){return this.result_do_highlight(h)}}else{return this.results_show()}};g.prototype.keyup_arrow=function(){var i,h,j;if(!this.results_showing&&!this.is_multiple){return this.results_show()}else{if(this.result_highlight){j=this.result_highlight.previousSiblings();i=this.search_results.select("li.active-result");h=j.intersect(i);if(h.length){return this.result_do_highlight(h.first())}else{if(this.choices_count()>0){this.results_hide()}return this.result_clear_highlight()}}}};g.prototype.keydown_backstroke=function(){var h;if(this.pending_backstroke){this.choice_destroy(this.pending_backstroke.down("a"));return this.clear_backstroke()}else{h=this.search_container.siblings().last();if(h&&h.hasClassName("search-choice")&&!h.hasClassName("search-choice-disabled")){this.pending_backstroke=h;if(this.pending_backstroke){this.pending_backstroke.addClassName("search-choice-focus")}if(this.single_backstroke_delete){return this.keydown_backstroke()}else{return this.pending_backstroke.addClassName("search-choice-focus")}}}};g.prototype.clear_backstroke=function(){if(this.pending_backstroke){this.pending_backstroke.removeClassName("search-choice-focus")}return this.pending_backstroke=null};g.prototype.keydown_checker=function(i){var j,h;j=(h=i.which)!=null?h:i.keyCode;this.search_field_scale();if(j!==8&&this.pending_backstroke){this.clear_backstroke()}switch(j){case 8:this.backstroke_length=this.search_field.value.length;break;case 9:if(this.results_showing&&!this.is_multiple){this.result_select(i)}this.mouse_on_container=false;break;case 13:i.preventDefault();break;case 38:i.preventDefault();this.keyup_arrow();break;case 40:i.preventDefault();this.keydown_arrow();break}};g.prototype.search_field_scale=function(){var p,l,k,n,m,j,o,i;if(this.is_multiple){l=0;j=0;n="position:absolute; left: -1000px; top: -1000px; display:none;";m=["font-size","font-style","font-weight","font-family","line-height","text-transform","letter-spacing"];for(o=0,i=m.length;o<i;o++){k=m[o];n+=k+":"+this.search_field.getStyle(k)+";"}p=new Element("div",{style:n}).update(this.search_field.value.escapeHTML());document.body.appendChild(p);j=Element.measure(p,"width")+25;p.remove();if(!this.f_width){this.f_width=this.container.getWidth()}if(j>this.f_width-10){j=this.f_width-10}return this.search_field.setStyle({width:j+"px"})}};return g})(AbstractChosen);a.Chosen=e}).call(this);