(function(c){function d(f){var e=jQuery("#form").validate();var h=c.validator.methods[f];var g=c("#firstname")[0];return function(i,j){g.value=i;return h.call(e,i,g,j)}}module("methods");test("default messages",function(){var e=c.validator.methods;c.each(e,function(f){ok(jQuery.validator.messages[f],f+" has a default message.")})});test("digit",function(){var e=d("digits");ok(e("123"),"Valid digits");ok(!e("123.000"),"Invalid digits");ok(!e("123.000,00"),"Invalid digits");ok(!e("123.0.0,0"),"Invalid digits");ok(!e("x123"),"Invalid digits");ok(!e("100.100,0,0"),"Invalid digits")});test("url",function(){var e=d("url");ok(e("http://bassistance.de/jquery/plugin.php?bla=blu"),"Valid url");ok(e("https://bassistance.de/jquery/plugin.php?bla=blu"),"Valid url");ok(e("ftp://bassistance.de/jquery/plugin.php?bla=blu"),"Valid url");ok(e("http://www.føtex.dk/"),"Valid url, danish unicode characters");ok(e("http://bösendorfer.de/"),"Valid url, german unicode characters");ok(e("http://192.168.8.5"),"Valid IP Address");ok(!e("http://192.168.8."),"Invalid IP Address");ok(!e("http://bassistance"),"Invalid url");ok(!e("http://bassistance."),"Invalid url");ok(!e("http://bassistance,de"),"Invalid url");ok(!e("http://bassistance;de"),"Invalid url");ok(!e("http://.bassistancede"),"Invalid url");ok(!e("bassistance.de"),"Invalid url")});test("url2 (tld optional)",function(){var e=d("url2");ok(e("http://bassistance.de/jquery/plugin.php?bla=blu"),"Valid url");ok(e("https://bassistance.de/jquery/plugin.php?bla=blu"),"Valid url");ok(e("ftp://bassistance.de/jquery/plugin.php?bla=blu"),"Valid url");ok(e("http://www.føtex.dk/"),"Valid url, danish unicode characters");ok(e("http://bösendorfer.de/"),"Valid url, german unicode characters");ok(e("http://192.168.8.5"),"Valid IP Address");ok(!e("http://192.168.8."),"Invalid IP Address");ok(e("http://bassistance"),"Invalid url");ok(e("http://bassistance."),"Invalid url");ok(!e("http://bassistance,de"),"Invalid url");ok(!e("http://bassistance;de"),"Invalid url");ok(!e("http://.bassistancede"),"Invalid url");ok(!e("bassistance.de"),"Invalid url")});test("email",function(){var e=d("email");ok(e("name@domain.tld"),"Valid email");ok(e("name@domain.tl"),"Valid email");ok(e("bart+bart@tokbox.com"),"Valid email");ok(e("bart+bart@tokbox.travel"),"Valid email");ok(e("n@d.tld"),"Valid email");ok(e("ole@føtex.dk"),"Valid email");ok(e("jörn@bassistance.de"),"Valid email");ok(e("bla.blu@g.mail.com"),"Valid email");ok(e('"Scott Gonzalez"@example.com'),"Valid email");ok(e('"Scott González"@example.com'),"Valid email");ok(e('"name."@domain.tld'),"Valid email");ok(e('"name,"@domain.tld'),"Valid email");ok(e('"name;"@domain.tld'),"Valid email");ok(!e("name"),"Invalid email");ok(!e("name@"),"Invalid email");ok(!e("name@domain"),"Invalid email");ok(!e("name.@domain.tld"),"Invalid email");ok(!e("name,@domain.tld"),"Invalid email");ok(!e("name;@domain.tld"),"Invalid email");ok(!e("name;@domain.tld."),"Invalid email")});test("email2 (tld optional)",function(){var e=d("email2");ok(e("name@domain.tld"),"Valid email");ok(e("name@domain.tl"),"Valid email");ok(e("bart+bart@tokbox.com"),"Valid email");ok(e("bart+bart@tokbox.travel"),"Valid email");ok(e("n@d.tld"),"Valid email");ok(e("ole@føtex.dk"),"Valid email");ok(e("jörn@bassistance.de"),"Valid email");ok(e("bla.blu@g.mail.com"),"Valid email");ok(e('"Scott Gonzalez"@example.com'),"Valid email");ok(e('"Scott González"@example.com'),"Valid email");ok(e('"name."@domain.tld'),"Valid email");ok(e('"name,"@domain.tld'),"Valid email");ok(e('"name;"@domain.tld'),"Valid email");ok(!e("name"),"Invalid email");ok(!e("name@"),"Invalid email");ok(e("name@domain"),"Invalid email");ok(!e("name.@domain.tld"),"Invalid email");ok(!e("name,@domain.tld"),"Invalid email");ok(!e("name;@domain.tld"),"Invalid email")});test("number",function(){var e=d("number");ok(e("123"),"Valid number");ok(e("-123"),"Valid number");ok(e("123,000"),"Valid number");ok(e("-123,000"),"Valid number");ok(e("123,000.00"),"Valid number");ok(e("-123,000.00"),"Valid number");ok(!e("123.000,00"),"Invalid number");ok(!e("123.0.0,0"),"Invalid number");ok(!e("x123"),"Invalid number");ok(!e("100.100,0,0"),"Invalid number");ok(e(""),"Blank is valid");ok(e("123"),"Valid decimal");ok(e("123000"),"Valid decimal");ok(e("123000.12"),"Valid decimal");ok(e("-123000.12"),"Valid decimal");ok(e("123.000"),"Valid decimal");ok(e("123,000.00"),"Valid decimal");ok(e("-123,000.00"),"Valid decimal");ok(e(".100"),"Valid decimal");ok(!e("1230,000.00"),"Invalid decimal");ok(!e("123.0.0,0"),"Invalid decimal");ok(!e("x123"),"Invalid decimal");ok(!e("100.100,0,0"),"Invalid decimal")});test("date",function(){var e=d("date");ok(e("06/06/1990"),"Valid date");ok(e("6/6/06"),"Valid date");ok(!e("1990x-06-06"),"Invalid date")});test("dateISO",function(){var e=d("dateISO");ok(e("1990-06-06"),"Valid date");ok(e("1990/06/06"),"Valid date");ok(e("1990-6-6"),"Valid date");ok(e("1990/6/6"),"Valid date");ok(!e("1990-106-06"),"Invalid date");ok(!e("190-06-06"),"Invalid date")});test("required",function(){var f=jQuery("#form").validate(),h=c.validator.methods.required,g=c("#text1, #text1b, #hidden2, #select1, #select2");ok(h.call(f,g[0].value,g[0]),"Valid text input");ok(!h.call(f,g[1].value,g[1]),"Invalid text input");ok(!h.call(f,g[1].value,g[2]),"Invalid text input");ok(!h.call(f,g[2].value,g[3]),"Invalid select");ok(h.call(f,g[3].value,g[4]),"Valid select");g=c("#area1, #area2, #pw1, #pw2");ok(h.call(f,g[0].value,g[0]),"Valid textarea");ok(!h.call(f,g[1].value,g[1]),"Invalid textarea");ok(h.call(f,g[2].value,g[2]),"Valid password input");ok(!h.call(f,g[3].value,g[3]),"Invalid password input");g=c("#radio1, #radio2, #radio3");ok(!h.call(f,g[0].value,g[0]),"Invalid radio");ok(h.call(f,g[1].value,g[1]),"Valid radio");ok(h.call(f,g[2].value,g[2]),"Valid radio");g=c("#check1, #check2");ok(h.call(f,g[0].value,g[0]),"Valid checkbox");ok(!h.call(f,g[1].value,g[1]),"Invalid checkbox");g=c("#select1, #select2, #select3, #select4");ok(!h.call(f,g[0].value,g[0]),"Invalid select");ok(h.call(f,g[1].value,g[1]),"Valid select");ok(h.call(f,g[2].value,g[2]),"Valid select");ok(h.call(f,g[3].value,g[3]),"Valid select")});test("required with dependencies",function(){var f=jQuery("#form").validate(),h=c.validator.methods.required,g=c("#hidden2, #select1, #area2, #radio1, #check2");ok(h.call(f,g[0].value,g[0],"asffsaa"),"Valid text input due to dependency not met");ok(!h.call(f,g[0].value,g[0],"input"),"Invalid text input");ok(h.call(f,g[0].value,g[0],function(){return false}),"Valid text input due to dependency not met");ok(!h.call(f,g[0].value,g[0],function(){return true}),"Invalid text input");ok(h.call(f,g[1].value,g[1],"asfsfa"),"Valid select due to dependency not met");ok(!h.call(f,g[1].value,g[1],"input"),"Invalid select");ok(h.call(f,g[2].value,g[2],"asfsafsfa"),"Valid textarea due to dependency not met");ok(!h.call(f,g[2].value,g[2],"input"),"Invalid textarea");ok(h.call(f,g[3].value,g[3],"asfsafsfa"),"Valid radio due to dependency not met");ok(!h.call(f,g[3].value,g[3],"input"),"Invalid radio");ok(h.call(f,g[4].value,g[4],"asfsafsfa"),"Valid checkbox due to dependency not met");ok(!h.call(f,g[4].value,g[4],"input"),"Invalid checkbox")});test("minlength",function(){var f=jQuery("#form").validate(),i=c.validator.methods.minlength,h=2,g=c("#text1, #text1c, #text2, #text3");ok(i.call(f,g[0].value,g[0],h),"Valid text input");ok(!i.call(f,g[1].value,g[1],h),"Invalid text input");ok(!i.call(f,g[2].value,g[2],h),"Invalid text input");ok(i.call(f,g[3].value,g[3],h),"Valid text input");g=c("#check1, #check2, #check3");ok(!i.call(f,g[0].value,g[0],h),"Valid checkbox");ok(i.call(f,g[1].value,g[1],h),"Valid checkbox");ok(i.call(f,g[2].value,g[2],h),"Invalid checkbox");g=c("#select1, #select2, #select3, #select4, #select5");ok(i.call(f,g[0].value,g[0],h),"Valid select "+g[0].id);ok(!i.call(f,g[1].value,g[1],h),"Invalid select "+g[1].id);ok(i.call(f,g[2].value,g[2],h),"Valid select "+g[2].id);ok(i.call(f,g[3].value,g[3],h),"Valid select "+g[3].id);ok(i.call(f,g[4].value,g[4],h),"Valid select "+g[4].id)});test("maxlength",function(){var f=jQuery("#form").validate();var i=c.validator.methods.maxlength,h=4,g=c("#text1, #text2, #text3");ok(i.call(f,g[0].value,g[0],h),"Valid text input");ok(i.call(f,g[1].value,g[1],h),"Valid text input");ok(!i.call(f,g[2].value,g[2],h),"Invalid text input");g=c("#check1, #check2, #check3");ok(i.call(f,g[0].value,g[0],h),"Valid checkbox");ok(i.call(f,g[1].value,g[1],h),"Invalid checkbox");ok(!i.call(f,g[2].value,g[2],h),"Invalid checkbox");g=c("#select1, #select2, #select3, #select4");ok(i.call(f,g[0].value,g[0],h),"Valid select");ok(i.call(f,g[1].value,g[1],h),"Valid select");ok(i.call(f,g[2].value,g[2],h),"Valid select");ok(!i.call(f,g[3].value,g[3],h),"Invalid select")});test("rangelength",function(){var f=jQuery("#form").validate();var i=c.validator.methods.rangelength,h=[2,4],g=c("#text1, #text2, #text3");ok(i.call(f,g[0].value,g[0],h),"Valid text input");ok(!i.call(f,g[1].value,g[1],h),"Invalid text input");ok(!i.call(f,g[2].value,g[2],h),"Invalid text input")});test("min",function(){var f=jQuery("#form").validate();var i=c.validator.methods.min,h=8,g=c("#value1, #value2, #value3");ok(!i.call(f,g[0].value,g[0],h),"Invalid text input");ok(i.call(f,g[1].value,g[1],h),"Valid text input");ok(i.call(f,g[2].value,g[2],h),"Valid text input")});test("max",function(){var f=jQuery("#form").validate();var i=c.validator.methods.max,h=12,g=c("#value1, #value2, #value3");ok(i.call(f,g[0].value,g[0],h),"Valid text input");ok(i.call(f,g[1].value,g[1],h),"Valid text input");ok(!i.call(f,g[2].value,g[2],h),"Invalid text input")});test("range",function(){var f=jQuery("#form").validate();var i=c.validator.methods.range,h=[4,12],g=c("#value1, #value2, #value3");ok(!i.call(f,g[0].value,g[0],h),"Invalid text input");ok(i.call(f,g[1].value,g[1],h),"Valid text input");ok(!i.call(f,g[2].value,g[2],h),"Invalid text input")});test("equalTo",function(){var f=jQuery("#form").validate();var h=c.validator.methods.equalTo,g=c("#text1, #text2");ok(h.call(f,"Test",g[0],"#text1"),"Text input");ok(h.call(f,"T",g[1],"#text2"),"Another one")});test("creditcard",function(){var e=d("creditcard");ok(e("446-667-651"),"Valid creditcard number");ok(e("446 667 651"),"Valid creditcard number");ok(!e("asdf"),"Invalid creditcard number")});test("extension",function(){var f=d("extension");ok(f("picture.gif"),"Valid default accept type");ok(f("picture.jpg"),"Valid default accept type");ok(f("picture.jpeg"),"Valid default accept type");ok(f("picture.png"),"Valid default accept type");ok(!f("picture.pgn"),"Invalid default accept type");var e=jQuery("#form").validate();f=function(g,h){return c.validator.methods.extension.call(e,g,c("#text1")[0],h)};ok(f("picture.doc","doc"),"Valid custom accept type");ok(f("picture.pdf","doc|pdf"),"Valid custom accept type");ok(f("picture.pdf","pdf|doc"),"Valid custom accept type");ok(!f("picture.pdf","doc"),"Invalid custom accept type");ok(!f("picture.doc","pdf"),"Invalid custom accept type");ok(f("picture.pdf","doc,pdf"),"Valid custom accept type, comma seperated");ok(f("picture.pdf","pdf,doc"),"Valid custom accept type, comma seperated");ok(!f("picture.pdf","gop,top"),"Invalid custom accept type, comma seperated")});test("remote",function(){expect(7);stop();var g=c("#username");var f=c("#userForm").validate({rules:{username:{required:true,remote:"users.php"}},messages:{username:{required:"Please",remote:jQuery.validator.format("{0} in use")}},submitHandler:function(){ok(false,"submitHandler may never be called when validating only elements")}});c(document).ajaxStop(function(){c(document).unbind("ajaxStop");equal(1,f.size(),"There must be one error");equal("Peter in use",f.errorList[0].message);c(document).ajaxStop(function(){c(document).unbind("ajaxStop");equal(1,f.size(),"There must be one error");equal("Peter2 in use",f.errorList[0].message);start()});g.val("Peter2");strictEqual(f.element(g),true,"new value, new request; dependency-mismatch considered as valid though")});strictEqual(f.element(g),false,"invalid element, nothing entered yet");g.val("Peter");strictEqual(f.element(g),true,"still invalid, because remote validation must block until it returns; dependency-mismatch considered as valid though")});test("remote, customized ajax options",function(){expect(2);stop();var e=c("#userForm").validate({rules:{username:{required:true,remote:{url:"users.php",type:"POST",beforeSend:function(g,f){deepEqual(f.type,"POST");deepEqual(f.data,"username=asdf&email=email.com")},data:{email:function(){return"email.com"}},complete:function(){start()}}}}});c("#username").val("asdf");c("#userForm").valid()});test("remote extensions",function(){expect(5);stop();var g=c("#username");var f=c("#userForm").validate({rules:{username:{required:true,remote:"users2.php"}},messages:{username:{required:"Please"}},submitHandler:function(){ok(false,"submitHandler may never be called when validating only elements")}});c(document).ajaxStop(function(){c(document).unbind("ajaxStop");equal(1,f.size(),"There must be one error");equal(f.errorList[0].message,"asdf is already taken, please try something else");f.element(g);equal(f.errorList[0].message,"asdf is already taken, please try something else","message doesn't change on revalidation");start()});strictEqual(f.element(g),false,"invalid element, nothing entered yet");g.val("asdf");strictEqual(f.element(g),true,"still invalid, because remote validation must block until it returns; dependency-mismatch considered as valid though")});test("remote radio correct value sent",function(){expect(1);stop();var g=c("#testForm10Radio2");g.attr("checked","checked");var f=c("#testForm10").validate({rules:{testForm10Radio:{required:true,remote:{url:"echo.php",dataType:"json",success:function(e){equal(e.testForm10Radio,"2"," correct radio value sent");start()}}}}});f.element(g)});test("remote reset clear old value",function(){expect(1);stop();var g=c("#username");var f=c("#userForm").validate({rules:{username:{required:true,remote:{url:"echo.php",dataFilter:function(h){var e=JSON.parse(h);if(e.username==="asdf"){return'"asdf is already taken"'}return'"'+true+'"'}}}}});c(document).ajaxStop(function(){var e;c(document).unbind("ajaxStop");c(document).ajaxStop(function(){clearTimeout(e);ok(true,"Remote request sent to server");start()});f.resetForm();g.val("asdf");e=setTimeout(function(){ok(false,"Remote server did not get request");start()},200);f.element(g)});g.val("asdf");f.element(g)});module("additional methods");test("phone (us)",function(){var e=d("phoneUS");ok(e("1(212)-999-2345"),"Valid us phone number");ok(e("212 999 2344"),"Valid us phone number");ok(e("212-999-0983"),"Valid us phone number");ok(!e("111-123-5434"),"Invalid us phone number");ok(!e("212 123 4567"),"Invalid us phone number")});test("phoneUK",function(){var e=d("phoneUK");ok(e("07222 555555"),"Valid UK Phone Number");ok(e("(07222) 555555"),"Valid UK Phone Number");ok(e("+44 7222 555 555"),"Valid UK Phone Number");ok(!e("7222 555555"),"Invalid UK Phone Number");ok(!e("+44 07222 555555"),"Invalid UK Phone Number")});test("mobileUK",function(){var e=d("mobileUK");ok(e("07734234323"),"Valid UK Mobile Number");ok(e("+447734234323"),"Valid UK Mobile Number");ok(!e("07034234323"),"Invalid UK Mobile Number");ok(!e("0753423432"),"Invalid UK Mobile Number");ok(!e("07604234323"),"Invalid UK Mobile Number");ok(!e("077342343234"),"Invalid UK Mobile Number");ok(!e("044342343234"),"Invalid UK Mobile Number");ok(!e("+44753423432"),"Invalid UK Mobile Number");ok(!e("+447604234323"),"Invalid UK Mobile Number");ok(!e("+4477342343234"),"Invalid UK Mobile Number");ok(!e("+4444342343234"),"Invalid UK Mobile Number")});test("dateITA",function(){var e=d("dateITA");ok(e("01/01/1900"),"Valid date ITA");ok(!e("01/13/1990"),"Invalid date ITA");ok(!e("01.01.1900"),"Invalid date ITA");ok(!e("01/01/199"),"Invalid date ITA")});test("iban",function(){var e=d("iban");ok(e("NL20INGB0001234567"),"Valid IBAN");ok(e("DE68 2105 0170 0012 3456 78"),"Valid IBAN");ok(e("NL20 INGB0001234567"),"Valid IBAN: invalid spacing");ok(e("NL20 INGB 00 0123 4567"),"Valid IBAN: invalid spacing");ok(e("XX40INGB000123456712341234"),"Valid (more or less) IBAN: unknown country, but checksum OK");ok(!e("NL20INGB000123456"),"Invalid IBAN: too short");ok(!e("NL20INGB00012345678"),"Invalid IBAN: too long");ok(!e("NL20INGB0001234566"),"Invalid IBAN: checksum incorrect");ok(!e("DE68 2105 0170 0012 3456 7"),"Invalid IBAN: too short");ok(!e("DE68 2105 0170 0012 3456 789"),"Invalid IBAN: too long");ok(!e("DE68 2105 0170 0012 3456 79"),"Invalid IBAN: checksum incorrect");ok(!e("NL54INGB00012345671234"),"Invalid IBAN too long, BUT CORRECT CHECKSUM");ok(!e("XX00INGB000123456712341234"),"Invalid IBAN: unknown country and checksum incorrect");ok(e("AL47 2121 1009 0000 0002 3569 8741"),"Valid IBAN - AL");ok(e("AD12 0001 2030 2003 5910 0100"),"Valid IBAN - AD");ok(e("AT61 1904 3002 3457 3201"),"Valid IBAN - AT");ok(e("AZ21 NABZ 0000 0000 1370 1000 1944"),"Valid IBAN - AZ");ok(e("BH67 BMAG 0000 1299 1234 56"),"Valid IBAN - BH");ok(e("BE62 5100 0754 7061"),"Valid IBAN - BE");ok(e("BA39 1290 0794 0102 8494"),"Valid IBAN - BA");ok(e("BG80 BNBG 9661 1020 3456 78"),"Valid IBAN - BG");ok(e("HR12 1001 0051 8630 0016 0"),"Valid IBAN - HR");ok(e("CH93 0076 2011 6238 5295 7"),"Valid IBAN - CH");ok(e("CY17 0020 0128 0000 0012 0052 7600"),"Valid IBAN - CY");ok(e("CZ65 0800 0000 1920 0014 5399"),"Valid IBAN - CZ");ok(e("DK50 0040 0440 1162 43"),"Valid IBAN - DK");ok(e("EE38 2200 2210 2014 5685"),"Valid IBAN - EE");ok(e("FO97 5432 0388 8999 44"),"Valid IBAN - FO");ok(e("FI21 1234 5600 0007 85"),"Valid IBAN - FI");ok(e("FR14 2004 1010 0505 0001 3M02 606"),"Valid IBAN - FR");ok(e("GE29 NB00 0000 0101 9049 17"),"Valid IBAN - GE");ok(e("DE89 3704 0044 0532 0130 00"),"Valid IBAN - DE");ok(e("GI75 NWBK 0000 0000 7099 453"),"Valid IBAN - GI");ok(e("GR16 0110 1250 0000 0001 2300 695"),"Valid IBAN - GR");ok(e("GL56 0444 9876 5432 10"),"Valid IBAN - GL");ok(e("HU42 1177 3016 1111 1018 0000 0000"),"Valid IBAN - HU");ok(e("IS14 0159 2600 7654 5510 7303 39"),"Valid IBAN - IS");ok(e("IE29 AIBK 9311 5212 3456 78"),"Valid IBAN - IE");ok(e("IL62 0108 0000 0009 9999 999"),"Valid IBAN - IL");ok(e("IT40 S054 2811 1010 0000 0123 456"),"Valid IBAN - IT");ok(e("LV80 BANK 0000 4351 9500 1"),"Valid IBAN - LV");ok(e("LB62 0999 0000 0001 0019 0122 9114"),"Valid IBAN - LB");ok(e("LI21 0881 0000 2324 013A A"),"Valid IBAN - LI");ok(e("LT12 1000 0111 0100 1000"),"Valid IBAN - LT");ok(e("LU28 0019 4006 4475 0000"),"Valid IBAN - LU");ok(e("MK07 2501 2000 0058 984"),"Valid IBAN - MK");ok(e("MT84 MALT 0110 0001 2345 MTLC AST0 01S"),"Valid IBAN - MT");ok(e("MU17 BOMM 0101 1010 3030 0200 000M UR"),"Valid IBAN - MU");ok(e("MD24 AG00 0225 1000 1310 4168"),"Valid IBAN - MD");ok(e("MC93 2005 2222 1001 1223 3M44 555"),"Valid IBAN - MC");ok(e("ME25 5050 0001 2345 6789 51"),"Valid IBAN - ME");ok(e("NL39 RABO 0300 0652 64"),"Valid IBAN - NL");ok(e("NO93 8601 1117 947"),"Valid IBAN - NO");ok(e("PK36 SCBL 0000 0011 2345 6702"),"Valid IBAN - PK");ok(e("PL60 1020 1026 0000 0422 7020 1111"),"Valid IBAN - PL");ok(e("PT50 0002 0123 1234 5678 9015 4"),"Valid IBAN - PT");ok(e("RO49 AAAA 1B31 0075 9384 0000"),"Valid IBAN - RO");ok(e("SM86 U032 2509 8000 0000 0270 100"),"Valid IBAN - SM");ok(e("SA03 8000 0000 6080 1016 7519"),"Valid IBAN - SA");ok(e("RS35 2600 0560 1001 6113 79"),"Valid IBAN - RS");ok(e("SK31 1200 0000 1987 4263 7541"),"Valid IBAN - SK");ok(e("SI56 1910 0000 0123 438"),"Valid IBAN - SI");ok(e("ES80 2310 0001 1800 0001 2345"),"Valid IBAN - ES");ok(e("SE35 5000 0000 0549 1000 0003"),"Valid IBAN - SE");ok(e("CH93 0076 2011 6238 5295 7"),"Valid IBAN - CH");ok(e("TN59 1000 6035 1835 9847 8831"),"Valid IBAN - TN");ok(e("TR33 0006 1005 1978 6457 8413 26"),"Valid IBAN - TR");ok(e("AE07 0331 2345 6789 0123 456"),"Valid IBAN - AE");ok(e("GB29 NWBK 6016 1331 9268 19"),"Valid IBAN - GB")});test("postcodeUK",function(){var e=d("postcodeUK");ok(e("AA9A 9AA"),"Valid postcode");ok(e("A9A 9AA"),"Valid postcode");ok(e("A9 9AA"),"Valid postcode");ok(e("A99 9AA"),"Valid postcode");ok(e("AA9 9AA"),"Valid postcode");ok(e("AA99 9AA"),"Valid postcode");ok(!e("AAAA 9AA"),"Invalid postcode");ok(!e("AA-2640"),"Invalid postcode");ok(!e("AAA AAA"),"Invalid postcode");ok(!e("AA AAAA"),"Invalid postcode");ok(!e("A AAAA"),"Invalid postcode");ok(!e("AAAAA"),"Invalid postcode");ok(!e("999 999"),"Invalid postcode");ok(!e("99 9999"),"Invalid postcode");ok(!e("9 9999"),"Invalid postcode");ok(!e("99999"),"Invalid postcode")});test("dateNL",function(){var e=d("dateNL");ok(e("01-01-1900"),"Valid date NL");ok(e("01.01.1900"),"Valid date NL");ok(e("01/01/1900"),"Valid date NL");ok(e("01-01-00"),"Valid date NL");ok(e("1-01-1900"),"Valid date NL");ok(e("10-10-1900"),"Valid date NL");ok(!e("0-01-1900"),"Invalid date NL");ok(!e("00-01-1900"),"Invalid date NL");ok(!e("35-01-1990"),"Invalid date NL");ok(!e("01.01.190"),"Invalid date NL")});test("phoneNL",function(){var e=d("phoneNL");ok(e("0701234567"),"Valid phone NL");ok(e("0687654321"),"Valid phone NL");ok(e("020-1234567"),"Valid phone NL");ok(e("020 - 12 34 567"),"Valid phone NL");ok(e("010-2345678"),"Valid phone NL");ok(e("+3120-1234567"),"Valid phone NL");ok(e("+31(0)10-2345678"),"Valid phone NL");ok(!e("020-123456"),"Invalid phone NL: too short");ok(!e("020-12345678"),"Invalid phone NL: too long");ok(!e("-0201234567"),"Invalid phone NL");ok(!e("+310201234567"),"Invalid phone NL: no 0 after +31 allowed")});test("mobileNL",function(){var e=d("mobileNL");ok(e("0612345678"),"Valid NL Mobile Number");ok(e("06-12345678"),"Valid NL Mobile Number");ok(e("06-12 345 678"),"Valid NL Mobile Number");ok(e("+316-12345678"),"Valid NL Mobile Number");ok(e("+31(0)6-12345678"),"Valid NL Mobile Number");ok(!e("abcdefghij"),"Invalid NL Mobile Number: text");ok(!e("0123456789"),"Invalid NL Mobile Number: should start with 06");ok(!e("0823456789"),"Invalid NL Mobile Number: should start with 06");ok(!e("06-1234567"),"Invalid NL Mobile Number: too short");ok(!e("06-123456789"),"Invalid NL Mobile Number: too long");ok(!e("-0612345678"),"Invalid NL Mobile Number");ok(!e("+310612345678"),"Invalid NL Mobile Number: no 0 after +31 allowed")});test("postalcodeNL",function(){var e=d("postalcodeNL");ok(e("1234AB"),"Valid NL Postal Code");ok(e("1234ab"),"Valid NL Postal Code");ok(e("1234 AB"),"Valid NL Postal Code");ok(e("6789YZ"),"Valid NL Postal Code");ok(!e("123AA"),"Invalid NL Postal Code: not enough digits");ok(!e("12345ZZ"),"Invalid NL Postal Code: too many digits");ok(!e("1234  AA"),"Invalid NL Postal Code: too many spaces");ok(!e("AA1234"),"Invalid NL Postal Code");ok(!e("1234-AA"),"Invalid NL Postal Code")});test("bankaccountNL",function(){var e=d("bankaccountNL");ok(e("755490975"),"Valid NL bank account");ok(e("75 54 90 975"),"Valid NL bank account");ok(e("123456789"),"Valid NL bank account");ok(e("12 34 56 789"),"Valid NL bank account");ok(!e("12 3456789"),"Valid NL bank account: inconsistent spaces");ok(!e("123 45 67 89"),"Valid NL bank account: incorrect spaces");ok(!e("755490971"),"Invalid NL bank account");ok(!e("755490973"),"Invalid NL bank account");ok(!e("755490979"),"Invalid NL bank account");ok(!e("123456781"),"Invalid NL bank account");ok(!e("123456784"),"Invalid NL bank account");ok(!e("123456788"),"Invalid NL bank account")});test("giroaccountNL",function(){var e=d("giroaccountNL");ok(e("123"),"Valid NL giro  account");ok(e("1234567"),"Valid NL giro account");ok(!e("123456788"),"Invalid NL giro account")});test("bankorgiroaccountNL",function(){var e=d("bankorgiroaccountNL");ok(e("123"),"Valid NL giro account");ok(e("1234567"),"Valid NL giro account");ok(e("123456789"),"Valid NL bank account");ok(!e("12345678"),"Invalid NL bank or giro account");ok(!e("123456788"),"Invalid NL bank or giro account")});test("time",function(){var e=d("time");ok(e("00:00"),"Valid time, lower bound");ok(e("23:59"),"Valid time, upper bound");ok(!e("12"),"Invalid time");ok(!e("29:59"),"Invalid time");ok(!e("00:60"),"Invalid time");ok(!e("24:60"),"Invalid time");ok(!e("24:00"),"Invalid time");ok(!e("30:00"),"Invalid time");ok(!e("29:59"),"Invalid time");ok(!e("120:00"),"Invalid time");ok(!e("12:001"),"Invalid time");ok(!e("12:00a"),"Invalid time")});test("time12h",function(){var e=d("time12h");ok(e("12:00 AM"),"Valid time, lower bound, am");ok(e("11:59 AM"),"Valid time, upper bound, am");ok(e("12:00AM"),"Valid time, no space, am");ok(e("12:00PM"),"Valid time, no space, pm");ok(e("12:00 PM"),"Valid time, lower bound, pm");ok(e("11:59 PM"),"Valid time, upper bound, pm");ok(e("11:59 am"),"Valid time, also accept lowercase");ok(e("11:59 pm"),"Valid time, also accept lowercase");ok(e("1:59 pm"),"Valid time, single hour, no leading 0");ok(e("01:59 pm"),"Valid time, single hour, leading 0");ok(!e("12:00"),"Invalid time");ok(!e("9"),"Invalid time");ok(!e("9 am"),"Invalid time");ok(!e("12:61 am"),"Invalid time");ok(!e("13:00 am"),"Invalid time");ok(!e("00:00 am"),"Invalid time")});test("minWords",function(){var e=d("minWords");ok(e("hello worlds",2),"plain text, valid");ok(e("<b>hello</b> world",2),"html, valid");ok(!e("hello",2),"plain text, invalid");ok(!e("<b>world</b>",2),"html, invalid");ok(!e("world <br/>",2),"html, invalid")});test("maxWords",function(){var e=d("maxWords");ok(e("hello",2),"plain text, valid");ok(e("<b>world</b>",2),"html, valid");ok(e("world <br/>",2),"html, valid");ok(e("hello worlds",2),"plain text, valid");ok(e("<b>hello</b> world",2),"html, valid");ok(!e("hello 123 world",2),"plain text, invalid");ok(!e("<b>hello</b> 123 world",2),"html, invalid")});test("rangeWords",function(){var e=d("rangeWords");ok(e("hello",[0,2]),"plain text, valid");ok(e("hello worlds",[0,2]),"plain text, valid");ok(e("<b>hello</b> world",[0,2]),"html, valid");ok(!e("hello worlds what is up",[0,2]),"plain text, invalid");ok(!e("<b>Hello</b> <b>world</b> <b>hello</b>",[0,2]),"html, invalid")});test("pattern",function(){var e=d("pattern");ok(e("AR1004","AR\\d{4}"),"Correct format for the given RegExp");ok(e("AR1004",/^AR\d{4}$/),"Correct format for the given RegExp");ok(!e("BR1004",/^AR\d{4}$/),"Invalid format for the given RegExp")});function b(g,e,f){c("#cardnumber").val(g);var h=c("#ccform").valid();equal(h,f,c.format("Expect card number {0} to validate to {1}, actually validated to ",g,f))}test("creditcardtypes, all",function(){c("#ccform").validate({rules:{cardnumber:{creditcard:true,creditcardtypes:{all:true}}}});b("4111-1111-1111-1111","VISA",true);b("5111-1111-1111-1118","MasterCard",true);b("6111-1111-1111-1116","Discover",true);b("3400-0000-0000-009","AMEX",true);b("4111-1111-1111-1110","VISA",false);b("5432-1111-1111-1111","MasterCard",false);b("6611-6611-6611-6611","Discover",false);b("3777-7777-7777-7777","AMEX",false)});test("creditcardtypes, visa",function(){c("#ccform").validate({rules:{cardnumber:{creditcard:true,creditcardtypes:{visa:true}}}});b("4111-1111-1111-1111","VISA",true);b("5111-1111-1111-1118","MasterCard",false);b("6111-1111-1111-1116","Discover",false);b("3400-0000-0000-009","AMEX",false)});test("creditcardtypes, mastercard",function(){c("#ccform").validate({rules:{cardnumber:{creditcard:true,creditcardtypes:{mastercard:true}}}});b("5111-1111-1111-1118","MasterCard",true);b("6111-1111-1111-1116","Discover",false);b("3400-0000-0000-009","AMEX",false);b("4111-1111-1111-1111","VISA",false)});function a(g,h,f){for(var e=0;e<h.length;e++){c(g+" input:eq("+e+")").val(h[e])}var j=c(g).valid();equal(j,f,c.format("Filled inputs of form '{0}' with {1} values ({2})",g,h.length,h.toString()))}test("require_from_group",function(){c("#productInfo").validate({rules:{partnumber:{require_from_group:[2,".productInfo"]},description:{require_from_group:[2,".productInfo"]},discount:{require_from_group:[2,".productInfo"]}}});a("#productInfo",[],false);a("#productInfo",[123],false);c('#productInfo input[type="checkbox"]').attr("checked","checked");a("#productInfo",[123],true);c('#productInfo input[type="checkbox"]').removeAttr("checked");a("#productInfo",[123,"widget"],true);a("#productInfo",[123,"widget","red"],true);a("#productInfo",[123,"widget","red"],true)});test("skip_or_fill_minimum",function(){c("#productInfo").validate({rules:{partnumber:{skip_or_fill_minimum:[2,".productInfo"]},description:{skip_or_fill_minimum:[2,".productInfo"]},color:{skip_or_fill_minimum:[2,".productInfo"]}}});a("#productInfo",[],true);a("#productInfo",[123],false);a("#productInfo",[123,"widget"],true);a("#productInfo",[123,"widget","red"],true)});test("zipcodeUS",function(){var e=d("zipcodeUS");ok(e("12345"),"Valid zip");ok(e("12345-2345"),"Valid zip");ok(!e("1"),"Invalid zip");ok(!e("1234"),"Invalid zip");ok(!e("123-23"),"Invalid zip");ok(!e("12345-43"),"Invalid zip")})})(jQuery);