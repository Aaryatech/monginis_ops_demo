/*!=========================================================================
 *  Bootstrap Dual Listbox
 *  v2.0.1
 *
 *  Responsive dual multiple select with filtering. Designed to work on
 *  small touch devices.
 *
 *  https://github.com/istvan-meszaros/bootstrap-duallistbox
 *  http://www.virtuosoft.eu/code/bootstrap-duallistbox/
 *
 *  Copyright 2013 István Ujj-Mészáros
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 * ====================================================================== */
(function(a){a.fn.bootstrapDualListbox=function(b){return this.each(function(){var f=a(this);if(!f.is("select")){return f.find("select").each(function(i,B){a(B).bootstrapDualListbox(b)})}if(f.data("duallistbox_generated")){return this}var x=a.extend({bootstrap2compatible:false,preserveselectiononmove:false,moveonselect:true,initialfilterfrom:"",initialfilterto:"",helperselectnamepostfix:"_helper",infotext:"Showing all {0}",infotextfiltered:'<span class="label label-warning">Filtered</span> {0} from {1}',infotextempty:"Empty list",selectorminimalheight:100,showfilterinputs:true,filterplaceholder:"Filter",filtertextclear:"show all",nonselectedlistlabel:false,selectedlistlabel:false},b);var k;if(x.bootstrap2compatible){k=a('<div class="row-fluid bootstrap-duallistbox-container bs2compatible"><div class="span6 box1"><span class="info-container"><span class="info"></span><button type="button" class="btn btn-mini clear1 pull-right">'+x.filtertextclear+'</button></span><input placeholder="'+x.filterplaceholder+'" class="filter" type="text"><div class="btn-group buttons"><button type="button" class="btn moveall" title="Move all"><i class="fa fa-arrow-right"></i><i class="fa fa-arrow-right"></i></button><button type="button" class="btn move" title="Move selected"><i class="fa fa-arrow-right"></i></button></div><select multiple="multiple" data-duallistbox_generated="true"></select></div><div class="span6 box2"><span class="info-container"><span class="info"></span><button type="button" class="btn btn-mini clear2 pull-right">'+x.filtertextclear+'</button></span><input placeholder="'+x.filterplaceholder+'" class="filter" type="text"><div class="btn-group buttons"><button type="button" class="btn remove" title="Remove selected"><i class="fa fa-arrow-left"></i></button><button type="button" class="btn removeall" title="Remove all"><i class="fa fa-arrow-left"></i><i class="fa fa-arrow-left"></i></button></div><select multiple="multiple" data-duallistbox_generated="true"></select></div></div>').insertBefore(f)}else{k=a('<div class="row bootstrap-duallistbox-container"><div class="col-md-6 box1"><span class="info-container"><span class="info"></span><button type="button" class="btn btn-default btn-xs clear1 pull-right">'+x.filtertextclear+'</button></span><input placeholder="'+x.filterplaceholder+'" class="filter" type="text"><div class="btn-group buttons"><button type="button" class="btn btn-default moveall" title="Move all"><i class="glyphicon glyphicon-arrow-right"></i><i class="glyphicon glyphicon-arrow-right"></i></button><button type="button" class="btn btn-default move" title="Move selected"><i class="glyphicon glyphicon-arrow-right"></i></button></div><select multiple="multiple" data-duallistbox_generated="true"></select></div><div class="col-md-6 box2"><span class="info-container"><span class="info"></span><button type="button" class="btn btn-default btn-xs clear2 pull-right">'+x.filtertextclear+'</button></span><input placeholder="'+x.filterplaceholder+'" class="filter" type="text"><div class="btn-group buttons"><button type="button" class="btn btn-default remove" title="Remove selected"><i class="glyphicon glyphicon-arrow-left"></i></button><button type="button" class="btn btn-default removeall" title="Remove all"><i class="glyphicon glyphicon-arrow-left"></i><i class="glyphicon glyphicon-arrow-left"></i></button></div><select multiple="multiple" data-duallistbox_generated="true"></select></div></div>').insertBefore(f)}var l={originalselect:f,box1:a(".box1",k),box2:a(".box2",k),filterinput1:a(".box1 .filter",k),filterinput2:a(".box2 .filter",k),filter1clear:a(".box1 .clear1",k),filter2clear:a(".box2 .clear2",k),info1:a(".box1 .info",k),info2:a(".box2 .info",k),select1:a(".box1 select",k),select2:a(".box2 select",k),movebutton:a(".box1 .move",k),removebutton:a(".box2 .remove",k),moveallbutton:a(".box1 .moveall",k),removeallbutton:a(".box2 .removeall",k),form:a(a(".box1 .filter",k)[0].form)},s=0,z=0,g=/android/i.test(navigator.userAgent.toLowerCase());q();function q(){if(g){x.moveonselect=true;x.preserveselectiononmove=false}if(x.moveonselect){k.addClass("moveonselect")}var C=l.originalselect.attr("name")||"";if(x.nonselectedlistlabel){var B="bootstrap-duallistbox-nonselected-list_"+C;l.box1.prepend('<label for="'+B+'">'+x.nonselectedlistlabel+"</label>");l.select1.prop("id",B)}if(x.selectedlistlabel){var D="bootstrap-duallistbox-selected-list_"+C;l.box2.prepend('<label for="'+D+'">'+x.selectedlistlabel+"</label>");l.select2.prop("id",D)}if(!!x.helperselectnamepostfix){l.select1.attr("name",C+x.helperselectnamepostfix+"1");l.select2.attr("name",C+x.helperselectnamepostfix+"2")}var E=l.originalselect.attr("class");if(typeof E!=="undefined"&&E){E=E.match(/\bspan[1-9][0-2]?/);if(!E){E=l.originalselect.attr("class");E=E.match(/\bcol-md-[1-9][0-2]?/)}}if(!!E){k.addClass(E.toString())}var i=(l.originalselect.height()<x.selectorminimalheight)?x.selectorminimalheight:l.originalselect.height();l.select1.height(i);l.select2.height(i);l.originalselect.addClass("hide");p();if(!x.showfilterinputs){l.filterinput1.hide();l.filterinput2.hide()}else{l.filterinput1.val(x.initialfilterfrom);l.filterinput2.val(x.initialfilterto)}d();j()}function p(){l.originalselect.find("option").each(function(B,C){var i=a(C);if(typeof(i.data("original-index"))==="undefined"){i.data("original-index",s++)}if(typeof(i.data("_selected"))==="undefined"){i.data("_selected",false)}})}function j(){z=0;l.select1.empty();l.select2.empty();l.originalselect.find("option").each(function(B,C){var i=a(C);if(i.prop("selected")){z++;l.select2.append(i.clone(true).prop("selected",i.data("_selected")))}else{l.select1.append(i.clone(true).prop("selected",i.data("_selected")))}});v();t();r()}function w(B,i){return B.replace(/\{(\d+)\}/g,function(C,D){return typeof i[D]!=="undefined"?i[D]:C})}function r(){if(!x.infotext){return}var E=l.select1.find("option").length,D=l.select2.find("option").length,B=l.originalselect.find("option").length-z,i=z,C="";if(B===0){C=x.infotextempty}else{if(E===B){C=w(x.infotext,[E,B])}else{C=w(x.infotextfiltered,[E,B])}}l.info1.html(C);l.box1.toggleClass("filtered",!(E===B||B===0));if(i===0){C=x.infotextempty}else{if(D===i){C=w(x.infotext,[D,i])}else{C=w(x.infotextfiltered,[D,i])}}l.info2.html(C);l.box2.toggleClass("filtered",!(D===i||i===0))}function d(){l.form.submit(function(i){if(l.filterinput1.is(":focus")){i.preventDefault();l.filterinput1.focusout()}else{if(l.filterinput2.is(":focus")){i.preventDefault();l.filterinput2.focusout()}}});l.originalselect.on("bootstrapduallistbox.refresh",function(i,B){p();if(!B){n();m()}else{e()}j()});l.filter1clear.on("click",function(){l.filterinput1.val("");j()});l.filter2clear.on("click",function(){l.filterinput2.val("");j()});l.movebutton.on("click",function(){o()});l.moveallbutton.on("click",function(){c()});l.removebutton.on("click",function(){A()});l.removeallbutton.on("click",function(){u()});l.filterinput1.on("change keyup",function(){v()});l.filterinput2.on("change keyup",function(){t()});if(x.moveonselect){x.preserveselectiononmove=false;l.select1.on("change",function(){o()});l.select2.on("change",function(){A()})}}function n(){l.select1.find("option").each(function(B,C){var i=a(C);l.originalselect.find("option").eq(i.data("original-index")).data("_selected",i.prop("selected"))})}function m(){l.select2.find("option").each(function(B,C){var i=a(C);l.originalselect.find("option").eq(i.data("original-index")).data("_selected",i.prop("selected"))})}function e(){l.select1.find("option").each(function(){l.originalselect.find("option").data("_selected",false)})}function v(){n();l.select1.empty().scrollTop(0);var i=new RegExp(a.trim(l.filterinput1.val()),"gi");l.originalselect.find("option").not(":selected").each(function(D,E){var C=a(E);var B=true;if(E.text.match(i)){B=false;l.select1.append(C.clone(true).prop("selected",C.data("_selected")))}l.originalselect.find("option").eq(C.data("original-index")).data("filtered1",B)});r()}function t(){m();l.select2.empty().scrollTop(0);var i=new RegExp(a.trim(l.filterinput2.val()),"gi");l.originalselect.find("option:selected").each(function(D,E){var C=a(E);var B=true;if(E.text.match(i)){B=false;l.select2.append(C.clone(true).prop("selected",C.data("_selected")))}l.originalselect.find("option").eq(C.data("original-index")).data("filtered2",B)});r()}function y(i){i.find("option").sort(function(C,B){return(a(C).data("original-index")>a(B).data("original-index"))?1:-1}).appendTo(i)}function h(B,i){l.originalselect.find("option").each(function(D,E){var C=a(E);if(C.data("original-index")===B){C.prop("selected",i)}})}function o(){if(x.preserveselectiononmove==="all"){n();m()}else{if(x.preserveselectiononmove==="moved"){n()}}l.select1.find("option:selected").each(function(B,C){var i=a(C);if(!i.data("filtered1")){h(i.data("original-index"),true)}});j();y(l.select2)}function A(){if(x.preserveselectiononmove==="all"){n();m()}else{if(x.preserveselectiononmove==="moved"){m()}}l.select2.find("option:selected").each(function(B,C){var i=a(C);if(!i.data("filtered2")){h(i.data("original-index"),false)}});j();y(l.select1)}function c(){if(x.preserveselectiononmove==="all"){n();m()}else{if(x.preserveselectiononmove==="moved"){n()}}l.originalselect.find("option").each(function(B,C){var i=a(C);if(!i.data("filtered1")){i.prop("selected",true)}});j()}function u(){if(x.preserveselectiononmove==="all"){n();m()}else{if(x.preserveselectiononmove==="moved"){m()}}l.originalselect.find("option").each(function(B,C){var i=a(C);if(!i.data("filtered2")){i.prop("selected",false)}});j()}})}})(jQuery);