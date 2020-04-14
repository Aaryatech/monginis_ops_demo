!function(){var g,f,j,h,e,k={}.hasOwnProperty,i=function(l,c){function n(){this.constructor=l}for(var m in c){k.call(c,m)&&(l[m]=c[m])}return n.prototype=c.prototype,l.prototype=new n,l.__super__=c.prototype,l};h=function(){function a(){this.options_index=0,this.parsed=[]}return a.prototype.add_node=function(b){return"OPTGROUP"===b.nodeName.toUpperCase()?this.add_group(b):this.add_option(b)},a.prototype.add_group=function(m){var l,r,q,p,o,n;for(l=this.parsed.length,this.parsed.push({array_index:l,group:!0,label:this.escapeExpression(m.label),children:0,disabled:m.disabled}),o=m.childNodes,n=[],q=0,p=o.length;p>q;q++){r=o[q],n.push(this.add_option(r,l,m.disabled))}return n},a.prototype.add_option=function(l,d,m){return"OPTION"===l.nodeName.toUpperCase()?(""!==l.text?(null!=d&&(this.parsed[d].children+=1),this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,value:l.value,text:l.text,html:l.innerHTML,selected:l.selected,disabled:m===!0?m:l.disabled,group_array_index:d,classes:l.className,style:l.style.cssText})):this.parsed.push({array_index:this.parsed.length,options_index:this.options_index,empty:!0}),this.options_index+=1):void 0},a.prototype.escapeExpression=function(l){var d,m;return null==l||l===!1?"":/[\&\<\>\"\'\`]/.test(l)?(d={"<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},m=/&(?!\w+;)|[\<\>\"\'\`]/g,l.replace(m,function(b){return d[b]||"&amp;"})):l},a}(),h.select_to_array=function(m){var l,q,p,o,n;for(q=new h,n=m.childNodes,p=0,o=n.length;o>p;p++){l=n[p],q.add_node(l)}return q.parsed},f=function(){function a(d,c){this.form_field=d,this.options=null!=c?c:{},a.browser_is_supported()&&(this.is_multiple=this.form_field.multiple,this.set_default_text(),this.set_default_values(),this.setup(),this.set_up_html(),this.register_observers())}return a.prototype.set_default_values=function(){var b=this;return this.click_test_action=function(c){return b.test_active_click(c)},this.activate_action=function(c){return b.activate_field(c)},this.active_field=!1,this.mouse_on_container=!1,this.results_showing=!1,this.result_highlighted=null,this.result_single_selected=null,this.allow_single_deselect=null!=this.options.allow_single_deselect&&null!=this.form_field.options[0]&&""===this.form_field.options[0].text?this.options.allow_single_deselect:!1,this.disable_search_threshold=this.options.disable_search_threshold||0,this.disable_search=this.options.disable_search||!1,this.enable_split_word_search=null!=this.options.enable_split_word_search?this.options.enable_split_word_search:!0,this.group_search=null!=this.options.group_search?this.options.group_search:!0,this.search_contains=this.options.search_contains||!1,this.single_backstroke_delete=null!=this.options.single_backstroke_delete?this.options.single_backstroke_delete:!0,this.max_selected_options=this.options.max_selected_options||1/0,this.inherit_select_classes=this.options.inherit_select_classes||!1,this.display_selected_options=null!=this.options.display_selected_options?this.options.display_selected_options:!0,this.display_disabled_options=null!=this.options.display_disabled_options?this.options.display_disabled_options:!0},a.prototype.set_default_text=function(){return this.default_text=this.form_field.getAttribute("data-placeholder")?this.form_field.getAttribute("data-placeholder"):this.is_multiple?this.options.placeholder_text_multiple||this.options.placeholder_text||a.default_multiple_text:this.options.placeholder_text_single||this.options.placeholder_text||a.default_single_text,this.results_none_found=this.form_field.getAttribute("data-no_results_text")||this.options.no_results_text||a.default_no_result_text},a.prototype.mouse_enter=function(){return this.mouse_on_container=!0},a.prototype.mouse_leave=function(){return this.mouse_on_container=!1},a.prototype.input_focus=function(){var b=this;if(this.is_multiple){if(!this.active_field){return setTimeout(function(){return b.container_mousedown()},50)}}else{if(!this.active_field){return this.activate_field()}}},a.prototype.input_blur=function(){var b=this;return this.mouse_on_container?void 0:(this.active_field=!1,setTimeout(function(){return b.blur_test()},100))},a.prototype.results_option_build=function(m){var l,q,p,o,n;for(l="",n=this.results_data,p=0,o=n.length;o>p;p++){q=n[p],l+=q.group?this.result_add_group(q):this.result_add_option(q),(null!=m?m.first:void 0)&&(q.selected&&this.is_multiple?this.choice_build(q):q.selected&&!this.is_multiple&&this.single_set_selected_text(q.text))}return l},a.prototype.result_add_option=function(l){var d,m;return l.search_match?this.include_option_in_results(l)?(d=[],l.disabled||l.selected&&this.is_multiple||d.push("active-result"),!l.disabled||l.selected&&this.is_multiple||d.push("disabled-result"),l.selected&&d.push("result-selected"),null!=l.group_array_index&&d.push("group-option"),""!==l.classes&&d.push(l.classes),m=""!==l.style.cssText?' style="'+l.style+'"':"",'<li class="'+d.join(" ")+'"'+m+' data-option-array-index="'+l.array_index+'">'+l.search_text+"</li>"):"":""},a.prototype.result_add_group=function(b){return b.search_match||b.group_match?b.active_options>0?'<li class="group-result">'+b.search_text+"</li>":"":""},a.prototype.results_update_field=function(){return this.set_default_text(),this.is_multiple||this.results_reset_cleanup(),this.result_clear_highlight(),this.result_single_selected=null,this.results_build(),this.results_showing?this.winnow_results():void 0},a.prototype.results_toggle=function(){return this.results_showing?this.results_hide():this.results_show()},a.prototype.results_search=function(){return this.results_showing?this.winnow_results():this.results_show()},a.prototype.winnow_results=function(){var z,y,x,w,v,u,t,s,r,q,p,o,n;for(this.no_results_clear(),v=0,t=this.get_search_text(),z=t.replace(/[-[\]{}()*+?.,\\^$|#\s]/g,"\\$&"),w=this.search_contains?"":"^",x=new RegExp(w+z,"i"),q=new RegExp(z,"i"),n=this.results_data,p=0,o=n.length;o>p;p++){y=n[p],y.search_match=!1,u=null,this.include_option_in_results(y)&&(y.group&&(y.group_match=!1,y.active_options=0),null!=y.group_array_index&&this.results_data[y.group_array_index]&&(u=this.results_data[y.group_array_index],0===u.active_options&&u.search_match&&(v+=1),u.active_options+=1),(!y.group||this.group_search)&&(y.search_text=y.group?y.label:y.html,y.search_match=this.search_string_match(y.search_text,x),y.search_match&&!y.group&&(v+=1),y.search_match?(t.length&&(s=y.search_text.search(q),r=y.search_text.substr(0,s+t.length)+"</em>"+y.search_text.substr(s+t.length),y.search_text=r.substr(0,s)+"<em>"+r.substr(s)),null!=u&&(u.group_match=!0)):null!=y.group_array_index&&this.results_data[y.group_array_index].search_match&&(y.search_match=!0)))}return this.result_clear_highlight(),1>v&&t.length?(this.update_results_content(""),this.no_results(t)):(this.update_results_content(this.results_option_build()),this.winnow_results_set_highlight())},a.prototype.search_string_match=function(m,l){var q,p,o,n;if(l.test(m)){return !0}if(this.enable_split_word_search&&(m.indexOf(" ")>=0||0===m.indexOf("["))&&(p=m.replace(/\[|\]/g,"").split(" "),p.length)){for(o=0,n=p.length;n>o;o++){if(q=p[o],l.test(q)){return !0}}}},a.prototype.choices_count=function(){var m,l,o,n;if(null!=this.selected_option_count){return this.selected_option_count}for(this.selected_option_count=0,n=this.form_field.options,l=0,o=n.length;o>l;l++){m=n[l],m.selected&&(this.selected_option_count+=1)}return this.selected_option_count},a.prototype.choices_click=function(b){return b.preventDefault(),this.results_showing||this.is_disabled?void 0:this.results_show()},a.prototype.keyup_checker=function(l){var d,m;switch(d=null!=(m=l.which)?m:l.keyCode,this.search_field_scale(),d){case 8:if(this.is_multiple&&this.backstroke_length<1&&this.choices_count()>0){return this.keydown_backstroke()}if(!this.pending_backstroke){return this.result_clear_highlight(),this.results_search()}break;case 13:if(l.preventDefault(),this.results_showing){return this.result_select(l)}break;case 27:return this.results_showing&&this.results_hide(),!0;case 9:case 38:case 40:case 16:case 91:case 17:break;default:return this.results_search()}},a.prototype.container_width=function(){return null!=this.options.width?this.options.width:""+this.form_field.offsetWidth+"px"},a.prototype.include_option_in_results=function(b){return this.is_multiple&&!this.display_selected_options&&b.selected?!1:!this.display_disabled_options&&b.disabled?!1:b.empty?!1:!0},a.browser_is_supported=function(){return"Microsoft Internet Explorer"===window.navigator.appName?document.documentMode>=8:/iP(od|hone)/i.test(window.navigator.userAgent)?!1:/Android/i.test(window.navigator.userAgent)&&/Mobile/i.test(window.navigator.userAgent)?!1:!0},a.default_multiple_text="Select Some Options",a.default_single_text="Select an Option",a.default_no_result_text="No results match",a}(),g=jQuery,g.fn.extend({chosen:function(a){return f.browser_is_supported()?this.each(function(){var l,b;l=g(this),b=l.data("chosen"),"destroy"===a&&b?b.destroy():b||l.data("chosen",new j(this,a))}):this}}),j=function(b){function a(){return e=a.__super__.constructor.apply(this,arguments)}return i(a,b),a.prototype.setup=function(){return this.form_field_jq=g(this.form_field),this.current_selectedIndex=this.form_field.selectedIndex,this.is_rtl=this.form_field_jq.hasClass("chosen-rtl")},a.prototype.set_up_html=function(){var d,l;return d=["chosen-container"],d.push("chosen-container-"+(this.is_multiple?"multi":"single")),this.inherit_select_classes&&this.form_field.className&&d.push(this.form_field.className),this.is_rtl&&d.push("chosen-rtl"),l={"class":d.join(" "),style:"width: "+this.container_width()+";",title:this.form_field.title},this.form_field.id.length&&(l.id=this.form_field.id.replace(/[^\w]/g,"_")+"_chosen"),this.container=g("<div />",l),this.is_multiple?this.container.html('<ul class="chosen-choices"><li class="search-field"><input type="text" value="'+this.default_text+'" class="default" autocomplete="off" style="width:25px;" /></li></ul><div class="chosen-drop"><ul class="chosen-results"></ul></div>'):this.container.html('<a class="chosen-single chosen-default" tabindex="-1"><span>'+this.default_text+'</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" /></div><ul class="chosen-results"></ul></div>'),this.form_field_jq.hide().after(this.container),this.dropdown=this.container.find("div.chosen-drop").first(),this.search_field=this.container.find("input").first(),this.search_results=this.container.find("ul.chosen-results").first(),this.search_field_scale(),this.search_no_results=this.container.find("li.no-results").first(),this.is_multiple?(this.search_choices=this.container.find("ul.chosen-choices").first(),this.search_container=this.container.find("li.search-field").first()):(this.search_container=this.container.find("div.chosen-search").first(),this.selected_item=this.container.find(".chosen-single").first()),this.results_build(),this.set_tab_index(),this.set_label_behavior(),this.form_field_jq.trigger("chosen:ready",{chosen:this})},a.prototype.register_observers=function(){var c=this;return this.container.bind("mousedown.chosen",function(d){c.container_mousedown(d)}),this.container.bind("mouseup.chosen",function(d){c.container_mouseup(d)}),this.container.bind("mouseenter.chosen",function(d){c.mouse_enter(d)}),this.container.bind("mouseleave.chosen",function(d){c.mouse_leave(d)}),this.search_results.bind("mouseup.chosen",function(d){c.search_results_mouseup(d)}),this.search_results.bind("mouseover.chosen",function(d){c.search_results_mouseover(d)}),this.search_results.bind("mouseout.chosen",function(d){c.search_results_mouseout(d)}),this.search_results.bind("mousewheel.chosen DOMMouseScroll.chosen",function(d){c.search_results_mousewheel(d)}),this.form_field_jq.bind("chosen:updated.chosen",function(d){c.results_update_field(d)}),this.form_field_jq.bind("chosen:activate.chosen",function(d){c.activate_field(d)}),this.form_field_jq.bind("chosen:open.chosen",function(d){c.container_mousedown(d)}),this.search_field.bind("blur.chosen",function(d){c.input_blur(d)}),this.search_field.bind("keyup.chosen",function(d){c.keyup_checker(d)}),this.search_field.bind("keydown.chosen",function(d){c.keydown_checker(d)}),this.search_field.bind("focus.chosen",function(d){c.input_focus(d)}),this.is_multiple?this.search_choices.bind("click.chosen",function(d){c.choices_click(d)}):this.container.bind("click.chosen",function(d){d.preventDefault()})},a.prototype.destroy=function(){return g(document).unbind("click.chosen",this.click_test_action),this.search_field[0].tabIndex&&(this.form_field_jq[0].tabIndex=this.search_field[0].tabIndex),this.container.remove(),this.form_field_jq.removeData("chosen"),this.form_field_jq.show()},a.prototype.search_field_disabled=function(){return this.is_disabled=this.form_field_jq[0].disabled,this.is_disabled?(this.container.addClass("chosen-disabled"),this.search_field[0].disabled=!0,this.is_multiple||this.selected_item.unbind("focus.chosen",this.activate_action),this.close_field()):(this.container.removeClass("chosen-disabled"),this.search_field[0].disabled=!1,this.is_multiple?void 0:this.selected_item.bind("focus.chosen",this.activate_action))},a.prototype.container_mousedown=function(c){return this.is_disabled||(c&&"mousedown"===c.type&&!this.results_showing&&c.preventDefault(),null!=c&&g(c.target).hasClass("search-choice-close"))?void 0:(this.active_field?this.is_multiple||!c||g(c.target)[0]!==this.selected_item[0]&&!g(c.target).parents("a.chosen-single").length||(c.preventDefault(),this.results_toggle()):(this.is_multiple&&this.search_field.val(""),g(document).bind("click.chosen",this.click_test_action),this.results_show()),this.activate_field())},a.prototype.container_mouseup=function(c){return"ABBR"!==c.target.nodeName||this.is_disabled?void 0:this.results_reset(c)},a.prototype.search_results_mousewheel=function(m){var l,o,n;return l=-(null!=(o=m.originalEvent)?o.wheelDelta:void 0)||(null!=(n=m.originialEvent)?n.detail:void 0),null!=l?(m.preventDefault(),"DOMMouseScroll"===m.type&&(l=40*l),this.search_results.scrollTop(l+this.search_results.scrollTop())):void 0},a.prototype.blur_test=function(){return !this.active_field&&this.container.hasClass("chosen-container-active")?this.close_field():void 0},a.prototype.close_field=function(){return g(document).unbind("click.chosen",this.click_test_action),this.active_field=!1,this.results_hide(),this.container.removeClass("chosen-container-active"),this.clear_backstroke(),this.show_search_field_default(),this.search_field_scale()},a.prototype.activate_field=function(){return this.container.addClass("chosen-container-active"),this.active_field=!0,this.search_field.val(this.search_field.val()),this.search_field.focus()},a.prototype.test_active_click=function(c){return this.container.is(g(c.target).closest(".chosen-container"))?this.active_field=!0:this.close_field()},a.prototype.results_build=function(){return this.parsing=!0,this.selected_option_count=null,this.results_data=h.select_to_array(this.form_field),this.is_multiple?this.search_choices.find("li.search-choice").remove():this.is_multiple||(this.single_set_selected_text(),this.disable_search||this.form_field.options.length<=this.disable_search_threshold?(this.search_field[0].readOnly=!0,this.container.addClass("chosen-container-single-nosearch")):(this.search_field[0].readOnly=!1,this.container.removeClass("chosen-container-single-nosearch"))),this.update_results_content(this.results_option_build({first:!0})),this.search_field_disabled(),this.show_search_field_default(),this.search_field_scale(),this.parsing=!1},a.prototype.result_do_highlight=function(m){var l,q,p,o,n;if(m.length){if(this.result_clear_highlight(),this.result_highlight=m,this.result_highlight.addClass("highlighted"),p=parseInt(this.search_results.css("maxHeight"),10),n=this.search_results.scrollTop(),o=p+n,q=this.result_highlight.position().top+this.search_results.scrollTop(),l=q+this.result_highlight.outerHeight(),l>=o){return this.search_results.scrollTop(l-p>0?l-p:0)}if(n>q){return this.search_results.scrollTop(q)}}},a.prototype.result_clear_highlight=function(){return this.result_highlight&&this.result_highlight.removeClass("highlighted"),this.result_highlight=null},a.prototype.results_show=function(){return this.is_multiple&&this.max_selected_options<=this.choices_count()?(this.form_field_jq.trigger("chosen:maxselected",{chosen:this}),!1):(this.container.addClass("chosen-with-drop"),this.form_field_jq.trigger("chosen:showing_dropdown",{chosen:this}),this.results_showing=!0,this.search_field.focus(),this.search_field.val(this.search_field.val()),this.winnow_results())},a.prototype.update_results_content=function(c){return this.search_results.html(c)},a.prototype.results_hide=function(){return this.results_showing&&(this.result_clear_highlight(),this.container.removeClass("chosen-with-drop"),this.form_field_jq.trigger("chosen:hiding_dropdown",{chosen:this})),this.results_showing=!1},a.prototype.set_tab_index=function(){var c;return this.form_field.tabIndex?(c=this.form_field.tabIndex,this.form_field.tabIndex=-1,this.search_field[0].tabIndex=c):void 0},a.prototype.set_label_behavior=function(){var c=this;return this.form_field_label=this.form_field_jq.parents("label"),!this.form_field_label.length&&this.form_field.id.length&&(this.form_field_label=g("label[for='"+this.form_field.id+"']")),this.form_field_label.length>0?this.form_field_label.bind("click.chosen",function(d){return c.is_multiple?c.container_mousedown(d):c.activate_field()}):void 0},a.prototype.show_search_field_default=function(){return this.is_multiple&&this.choices_count()<1&&!this.active_field?(this.search_field.val(this.default_text),this.search_field.addClass("default")):(this.search_field.val(""),this.search_field.removeClass("default"))},a.prototype.search_results_mouseup=function(d){var l;return l=g(d.target).hasClass("active-result")?g(d.target):g(d.target).parents(".active-result").first(),l.length?(this.result_highlight=l,this.result_select(d),this.search_field.focus()):void 0},a.prototype.search_results_mouseover=function(d){var l;return l=g(d.target).hasClass("active-result")?g(d.target):g(d.target).parents(".active-result").first(),l?this.result_do_highlight(l):void 0},a.prototype.search_results_mouseout=function(c){return g(c.target).hasClass("active-result")?this.result_clear_highlight():void 0},a.prototype.choice_build=function(l){var o,n,m=this;return o=g("<li />",{"class":"search-choice"}).html("<span>"+l.html+"</span>"),l.disabled?o.addClass("search-choice-disabled"):(n=g("<a />",{"class":"search-choice-close","data-option-array-index":l.array_index}),n.bind("click.chosen",function(c){return m.choice_destroy_link_click(c)}),o.append(n)),this.search_container.before(o)},a.prototype.choice_destroy_link_click=function(c){return c.preventDefault(),c.stopPropagation(),this.is_disabled?void 0:this.choice_destroy(g(c.target))},a.prototype.choice_destroy=function(c){return this.result_deselect(c[0].getAttribute("data-option-array-index"))?(this.show_search_field_default(),this.is_multiple&&this.choices_count()>0&&this.search_field.val().length<1&&this.results_hide(),c.parents("li").first().remove(),this.search_field_scale()):void 0},a.prototype.results_reset=function(){return this.form_field.options[0].selected=!0,this.selected_option_count=null,this.single_set_selected_text(),this.show_search_field_default(),this.results_reset_cleanup(),this.form_field_jq.trigger("change"),this.active_field?this.results_hide():void 0},a.prototype.results_reset_cleanup=function(){return this.current_selectedIndex=this.form_field.selectedIndex,this.selected_item.find("abbr").remove()},a.prototype.result_select=function(m){var l,o,n;return this.result_highlight?(l=this.result_highlight,this.result_clear_highlight(),this.is_multiple&&this.max_selected_options<=this.choices_count()?(this.form_field_jq.trigger("chosen:maxselected",{chosen:this}),!1):(this.is_multiple?l.removeClass("active-result"):(this.result_single_selected&&(this.result_single_selected.removeClass("result-selected"),n=this.result_single_selected[0].getAttribute("data-option-array-index"),this.results_data[n].selected=!1),this.result_single_selected=l),l.addClass("result-selected"),o=this.results_data[l[0].getAttribute("data-option-array-index")],o.selected=!0,this.form_field.options[o.options_index].selected=!0,this.selected_option_count=null,this.is_multiple?this.choice_build(o):this.single_set_selected_text(o.text),(m.metaKey||m.ctrlKey)&&this.is_multiple||this.results_hide(),this.search_field.val(""),(this.is_multiple||this.form_field.selectedIndex!==this.current_selectedIndex)&&this.form_field_jq.trigger("change",{selected:this.form_field.options[o.options_index].value}),this.current_selectedIndex=this.form_field.selectedIndex,this.search_field_scale())):void 0},a.prototype.single_set_selected_text=function(c){return null==c&&(c=this.default_text),c===this.default_text?this.selected_item.addClass("chosen-default"):(this.single_deselect_control_build(),this.selected_item.removeClass("chosen-default")),this.selected_item.find("span").text(c)},a.prototype.result_deselect=function(d){var c;return c=this.results_data[d],this.form_field.options[c.options_index].disabled?!1:(c.selected=!1,this.form_field.options[c.options_index].selected=!1,this.selected_option_count=null,this.result_clear_highlight(),this.results_showing&&this.winnow_results(),this.form_field_jq.trigger("change",{deselected:this.form_field.options[c.options_index].value}),this.search_field_scale(),!0)},a.prototype.single_deselect_control_build=function(){return this.allow_single_deselect?(this.selected_item.find("abbr").length||this.selected_item.find("span").first().after('<abbr class="search-choice-close"></abbr>'),this.selected_item.addClass("chosen-single-with-deselect")):void 0},a.prototype.get_search_text=function(){return this.search_field.val()===this.default_text?"":g("<div/>").text(g.trim(this.search_field.val())).html()},a.prototype.winnow_results_set_highlight=function(){var d,c;return c=this.is_multiple?[]:this.search_results.find(".result-selected.active-result"),d=c.length?c.first():this.search_results.find(".active-result").first(),null!=d?this.result_do_highlight(d):void 0},a.prototype.no_results=function(d){var l;return l=g('<li class="no-results">'+this.results_none_found+' "<span></span>"</li>'),l.find("span").first().html(d),this.search_results.append(l)},a.prototype.no_results_clear=function(){return this.search_results.find(".no-results").remove()},a.prototype.keydown_arrow=function(){var c;return this.results_showing&&this.result_highlight?(c=this.result_highlight.nextAll("li.active-result").first())?this.result_do_highlight(c):void 0:this.results_show()},a.prototype.keyup_arrow=function(){var c;return this.results_showing||this.is_multiple?this.result_highlight?(c=this.result_highlight.prevAll("li.active-result"),c.length?this.result_do_highlight(c.first()):(this.choices_count()>0&&this.results_hide(),this.result_clear_highlight())):void 0:this.results_show()},a.prototype.keydown_backstroke=function(){var c;return this.pending_backstroke?(this.choice_destroy(this.pending_backstroke.find("a").first()),this.clear_backstroke()):(c=this.search_container.siblings("li.search-choice").last(),c.length&&!c.hasClass("search-choice-disabled")?(this.pending_backstroke=c,this.single_backstroke_delete?this.keydown_backstroke():this.pending_backstroke.addClass("search-choice-focus")):void 0)},a.prototype.clear_backstroke=function(){return this.pending_backstroke&&this.pending_backstroke.removeClass("search-choice-focus"),this.pending_backstroke=null},a.prototype.keydown_checker=function(l){var d,m;switch(d=null!=(m=l.which)?m:l.keyCode,this.search_field_scale(),8!==d&&this.pending_backstroke&&this.clear_backstroke(),d){case 8:this.backstroke_length=this.search_field.val().length;break;case 9:this.results_showing&&!this.is_multiple&&this.result_select(l),this.mouse_on_container=!1;break;case 13:l.preventDefault();break;case 38:l.preventDefault(),this.keyup_arrow();break;case 40:l.preventDefault(),this.keydown_arrow()}},a.prototype.search_field_scale=function(){var t,s,r,q,p,o,n,m,l;if(this.is_multiple){for(r=0,n=0,p="position:absolute; left: -1000px; top: -1000px; display:none;",o=["font-size","font-style","font-weight","font-family","line-height","text-transform","letter-spacing"],m=0,l=o.length;l>m;m++){q=o[m],p+=q+":"+this.search_field.css(q)+";"}return t=g("<div />",{style:p}),t.text(this.search_field.val()),g("body").append(t),n=t.width()+25,t.remove(),s=this.container.outerWidth(),n>s-10&&(n=s-10),this.search_field.css({width:n+"px"})}},a}(f)}.call(this);