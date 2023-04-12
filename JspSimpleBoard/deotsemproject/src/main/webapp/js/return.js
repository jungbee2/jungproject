var snapReturnPush = function (data){
    
    var _snapReturPush = this;
    this.userDomain = document.domain;
    this.referrerUrl = top.frames.document.referrer;
    this.locHash = window.location.hash;
    this.agent = navigator.userAgent.toLowerCase();
    this.userID  = data.user_id;
    this.backpush_id = data.push_id;
    this.param = data.param;
    this.device_type = data.device_type;
    
    this.spm_before_show_pushBanner = function()
    {
        if(document.querySelector('#spm_returnPush_main') != null){
            document.querySelector('#spm_returnPush_main').remove();
        }
        if(document.querySelector('#spm_returnPush_css') != null){
            document.querySelector('#spm_returnPush_css').remove();
        }
        if(document.querySelector('#spm_returnPush_customcss') != null){
            document.querySelector('#spm_returnPush_customcss').remove();
        }
    }

    this.spm_after_show_pushBanner = function()
    {
        document.querySelector('html').style.overflow = "";
        document.querySelector('html').style.position = "";
        document.querySelector('html').style.height = "";
        document.querySelector('html').style.setProperty('touch-action', '');
        document.querySelector('body').style.position = "";
        document.querySelector('body').style.overflow = "";
        document.querySelector('body').style.height = "";
        document.querySelector('body').style.width = "";
        document.querySelector('body').style.background = "";
        if(document.querySelector('#container')){//cafe24 iphone safari scroll error
            document.querySelector('#container').style.setProperty('overflow','unset');
            setTimeout(function(){
                document.querySelector('#container').style.setProperty('overflow','');
            },300);
        }
        document.querySelector('#spm_returnPush_css').setAttribute("href","");
        document.querySelector('#spm_returnPush_customcss').setAttribute("href","");
        document.querySelector('#spm_returnPush_main').style.setProperty('display', 'none', 'important');
        document.querySelector('#spm_returnPush_popup_full_iframe').style.setProperty('display', 'none', 'important');
        document.querySelector('#spm_returnPush_main').remove();
        document.querySelector('#spm_returnPush_css').remove();
        document.querySelector('#spm_returnPush_customcss').remove();
        document.querySelector('#spm_returnPush_popup_full_iframe').remove();
    }

    this.spm_show_pushBanner = function()
    {
        this.spm_before_show_pushBanner();
        var spm_returnPush_main = document.createElement("div");   
            spm_returnPush_main.setAttribute("id","spm_returnPush_main");    
            spm_returnPush_main.setAttribute("name","spm_returnPush_main");
            document.querySelector('body').appendChild(spm_returnPush_main);                 
        var pushIframe = document.createElement("iframe");
            pushIframe.setAttribute("id", 'spm_returnPush_frame_form');
            pushIframe.setAttribute("name", "spm_returnPush_frame_form");
            pushIframe.src = getServerInfo(false)+'Spm_Mgr/pushLayoutDetail/'+this.backpush_id+'/back/'+this.device_type+'/'+this.userID+'?'+this.param;
            pushIframe.allowtransparency = true;
            pushIframe.frameBorder = 0;
            pushIframe.scrolling = 'no';
            pushIframe.style.setProperty('display', 'block', 'important');
            pushIframe.style.setProperty('height', '100%', 'important');
            pushIframe.style.setProperty('z-index', '1000');
            pushIframe.style.setProperty('position', 'relative');
            document.querySelector('#spm_returnPush_main').appendChild(pushIframe); 
            //document.querySelector('#spm_returnPush_main').style.zIndex = "9999999999999";
            document.querySelector('#spm_returnPush_main').style.zIndex = "-1";
            document.querySelector('#spm_returnPush_main').style.position = "fixed";    
            document.querySelector('#spm_returnPush_main').style.visibility = "hidden";
            document.querySelector('#spm_returnPush_main').style.opacity = "0";
            //document.querySelector('#spm_returnPush_main').style.height = "0px";
            //document.querySelector('#spm_returnPush_main').style.width = "100%";
            if(this.device_type == 'mobile'){
                pushIframe.addEventListener('load', function() {
                    init_mobile_Returnpush();
                    pushIframe.style.setProperty('width', '100px', 'important');
                    pushIframe.style.setProperty('min-width', '100%', 'important');
                }, false);
            } else if(this.device_type == 'pc'){
                pushIframe.addEventListener('load', function() {
                    init_pc_Returnpush();
                    pushIframe.style.setProperty('width', '100%', 'important');
                }, false);                    
            }
    };

    this.spm_detail_display = function()
    {
        snap_sf_post_to_resultviewmessage(JSON.stringify({e: 'spm_set_backpush_action', params: {} }), 'spm_returnPush_frame_form');
    }

    this.spm_detail_display_background = function(style)
    {   
        document.querySelector('#spm_returnPush_main').style.setProperty('width', style.width);
        document.querySelector('#spm_returnPush_main').style.setProperty('height', style.height);
        document.querySelector('#spm_returnPush_main').style.setProperty(style.xPosition.type, style.xPosition.value);
        document.querySelector('#spm_returnPush_main').style.setProperty(style.yPosition.type, style.yPosition.value);
        if(style.animation.type !== "none"){
            document.querySelector('#spm_returnPush_main').setAttribute('class', style.animation.type + ' ' + style.animation.method);
        }
        if(style.background.boolean == "true"){
            if(!document.querySelector("#spm_returnPush_popup_full_iframe")){
                var aIframe = document.createElement("div");
                aIframe.setAttribute("id", 'spm_returnPush_popup_full_iframe');
                aIframe.style.width = "100%";
                aIframe.style.height = "100%";
                aIframe.style.position = "fixed";
                aIframe.style.left = '0px';
                aIframe.style.right = '0px';
                aIframe.style.top = '0px';
                aIframe.style.bottom = '0px';
                aIframe.style.backgroundColor = 'rgba(' + style.background.value + ')';
                aIframe.style.zIndex = "1147483647";
                if(window.spmIsWebView){
                aIframe.innerHTML = "<div id='spm_logo'><a href='intent:snapcompany.net/#Intent;scheme=http;package=com.android.chrome;end' target='_blank'>SNAPPUSH</a></div>";
                }else{
                aIframe.innerHTML = "<div id='spm_logo'><a href='//snapcompany.net/' target='_blank'>SNAPPUSH</a></div>";
                }
                document.querySelector('#spm_returnPush_main').parentNode.insertBefore(aIframe, document.querySelector('#spm_returnPush_main'));
                //document.querySelector('body').appendChild(aIframe);
                //document.querySelector('#spm_returnPush_main').appendChild(aIframe);
                document.querySelector("#spm_logo a").style.color = "white";
                document.querySelector("#spm_logo a").style.fontSize = "12pt";
                document.querySelector("#spm_logo a").style.position = "absolute";
                document.querySelector("#spm_logo a").style.bottom = "10px";
                document.querySelector("#spm_logo a").style.right = "20px";
                document.querySelector("#spm_logo a").style.setProperty('z-index', '1000');
                            
                document.querySelector('html').style.overflow = "hidden";
                document.querySelector('html').style.position = "relative";
                document.querySelector('html').style.height = "100%";
                document.querySelector('html').style.setProperty('touch-action', 'none');
                if(this.device_type == 'mobile'){
                    document.querySelector('body').style.position = "fixed";
                    document.querySelector('body').style.overflow = "hidden";
                }
                document.querySelector('body').style.background = "transparent";
                snap_spm_hidden_pushbanner_event();
            }
        }
        document.querySelector('#spm_returnPush_main').style.opacity = "";
        document.querySelector('#spm_returnPush_main').style.zIndex = "9999999999999";
        document.querySelector('#spm_returnPush_main').style.visibility = "visible";
    }    
    
    this.init_mobile_Returnpush = function()
    {
        if(this.locHash.indexOf('#snapPush_return') == -1){
            history.pushState(null, null, window.location.href+'#snapPush_return');
        }
        window.addEventListener("hashchange", returnPushmobileEventbind, false);
    }

    this.init_pc_Returnpush = function()
    {
        window.document.addEventListener("mouseout", returnPushPcEventbind, false);           
    }
    
    this.eventUrlCheck = function(url)
    {
        if(url.indexOf('#snapcloudmessageFromAdmin') !== -1){
           return true;
        }
        if(url.indexOf('#') == -1){
            return true;
        }
        return false;
    }

};

window.addEventListener("message", returnPushEventHandle, false);
function returnPushEventHandle(event){
    try {
        if (event.origin.indexOf('snapfit') != -1) {
            var data = event.data;
            if(!data){
                return;
            }
            var values = JSON.parse(data);       
            var params = values.params;
            if(values.e == 'init_returnPush'){
                if( window.document.readyState === 'interactive' || window.document.readyState === 'complete'){
                    returnShowCalc(params.data,window.document.readyState);                   
                } else {
                    window.document.onreadystatechange = function () {
                        if ( window.document.readyState === 'interactive' || window.document.readyState === 'complete') {
                            if(document.querySelector('#spm_returnPush_main') == null){
                                returnShowCalc(params.data,window.document.readyState);   
                            }
                        }
                    }   
                }
            } else if (values.e == 'spm_returnPush_show') {

                if(params.data.templateStyle !== null){
                    document.querySelector('#spm_returnPush_main').style.setProperty('width',params.data.templateStyle['width']);
                    document.querySelector('#spm_returnPush_main').style.setProperty('min-width', params.data.templateStyle['min-width']);
                    document.querySelector('#spm_returnPush_main').style.setProperty('max-width', params.data.templateStyle['max-width']);
                }                
                var returnPushcss = document.createElement("link");
                    returnPushcss.setAttribute("id","spm_returnPush_css");
                    returnPushcss.setAttribute("href",params.data.outtercss);
                    returnPushcss.setAttribute("type","text/css");
                    returnPushcss.setAttribute("rel","stylesheet");
                    returnPushcss.addEventListener('load', function() {
                        setTimeout(function(){
                            snap_sf_post_to_resultviewmessage(JSON.stringify({e: 'spm_banner_style_loader', params: {} }), 'spm_returnPush_frame_form');
                        }, 100);
                    }, false);
                    document.head.appendChild(returnPushcss);                
                var returnPushCustomcss = document.createElement("link");
                    returnPushCustomcss.setAttribute("id","spm_returnPush_customcss");
                    returnPushCustomcss.setAttribute("href",params.data.customcss);
                    returnPushCustomcss.setAttribute("type","text/css");
                    returnPushCustomcss.setAttribute("rel","stylesheet");
                    document.head.appendChild(returnPushCustomcss);
                //document.querySelector('#spm_returnPush_main').style.display = "block";
            } else if (values.e == 'spm_returnPush_show_background') {
                spm_detail_display_background(params.data.bannerStyle);
            } else if (values.e == 'spm_returnPush_show_background_v2') {
                //spm_detail_display_background_v2(params.data.bannerStyle);
            } else if (values.e == 'spm_returnPush_hide'){
                spm_after_show_pushBanner();
            } else if (values.e == 'spm_returnPush_hide_today'){
                snap_spm_set_todayShowBanner('return');
                spm_after_show_pushBanner();
            }

        }
    } catch (e){

    }
}
function returnShowCalc(data,state)
{
    //var returnTimeout = (state === 'interactive') ? 500 : 50 ;
    var returnTimeout = 0;
    setTimeout(function(){
        snapReturnPush(data);
        spm_show_pushBanner();
    },returnTimeout);
}

function returnPushmobileEventbind(event)
{
    if(event.oldURL.indexOf('snapPush_return') !== -1 && eventUrlCheck(event.newURL)){
        window.addEventListener((navigator.userAgent.indexOf("iPhone OS") > -1) ? "pagehide" : "beforeunload", spm_after_show_pushBanner, { capture: false, once: true, passive: false });
        spm_detail_display();
        window.removeEventListener("hashchange",returnPushmobileEventbind);
    }
}

function returnPushPcEventbind(event)
{
    //if(event.toElement == null && document.querySelector('html') == event.fromElement){
    //if(event.clientY <= 0 || event.clientX <= 0 || (event.clientX >= window.innerWidth || event.clientY >= window.innerHeight)) {
    if(event.clientY <= 0 && event.fromElement.id != 'snapfit_resultview_popup_full_iframe' && event.fromElement.id != 'spm_banner_frame_form') {
        spm_detail_display();
        window.document.removeEventListener("mouseout",returnPushPcEventbind);
    }
}

function snap_spm_hidden_pushbanner_event(){
    document.getElementById('spm_returnPush_popup_full_iframe').onclick = function(){ spm_after_show_pushBanner(); }
}