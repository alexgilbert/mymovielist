(function(){var e,t,n,r,i,c,a,o,u,d,l,s,f,h,p;$(document).on("page:load ready",function(){return n()}),n=function(){return $(".wice-grid-container").each(function(t,n){var r,i,d,l,g,k,v,w,m;for(l=n.id,r=$(".wg-data",n),k=r.data("processor-initializer-arguments"),d=r.data("filter-declarations"),e(r.data("foc")),g=new WiceGridProcessor(l,k[0],k[1],k[2],k[3],k[4],k[5]),v=function(e){return g.register({filterName:e.filterName,detached:e.detached,templates:e.declaration.templates,ids:e.declaration.ids})},w=0,m=d.length;m>w;w++)i=d[w],v(i);return window[l]=g,u(),p(n,g),o(n,g),s(n),h(n,g),f(n),c(n,g),a(n)}),i(),l(),d(),f($(".wg-detached-filter"))},r=function(e,t,n,r,i){var c,a,o,u;return(c=t.data(e))&&(o=$(u="#"+c))&&(a=o.datepicker("getDate"))&&i(a,n)?(o.datepicker("setDate",n),o.next().next().html($.datepicker.formatDate(r,n))):void 0},u=function(){var e;return 0!==$(".wice-grid-container input.check-for-datepicker[type=hidden], .wg-detached-filter input.check-for-datepicker[type=hidden]").length&&($.datepicker||alert("Seems like you do not have jQuery datepicker (http://jqueryui.com/demos/datepicker/)\ninstalled. Either install it or set Wice::Defaults::HELPER_STYLE to :standard in\nwice_grid_config.rb in order to use standard Rails date helpers")),(e=$(".wice-grid-container input[type=hidden], .wg-detached-filter input[type=hidden]").data("locale"))&&$.datepicker.setDefaults($.datepicker.regional[e]),$(".wice-grid-container .date-label, .wg-detached-filter .date-label").each(function(e,t){var n,i,c,a,o;return i=$("#"+$(t).data("dom-id")),c=i.data("close-calendar-event-name"),$(t).click(function(e){return $(this).html(""),i.val(""),c&&i.trigger(c),e.preventDefault(),!1}),a=this,n=i.data("date-format"),o=i.data("date-year-range"),i.datepicker({firstDay:1,showOn:"button",dateFormat:n,buttonImage:i.data("button-image"),buttonImageOnly:!0,buttonText:i.data("button-text"),changeMonth:!0,changeYear:!0,yearRange:o,onSelect:function(e){var t;return t=$(this).datepicker("getDate"),r("the-other-datepicker-id-to",i,t,n,function(e,t){return t>e}),r("the-other-datepicker-id-from",i,t,n,function(e,t){return e>t}),$(a).html(e),c?i.trigger(c):void 0}})})},s=function(e){var t,n,r;return n=".wg-hide-filter",r=".wg-show-filter",t=".wg-filter-row",$(n,e).click(function(){return $(this).hide(),$(r,e).show(),$(t,e).hide()}),$(r,e).click(function(){return $(this).hide(),$(n,e).show(),$(t,e).show()})},o=function(e,t){return $(".export-to-csv-button",e).click(function(){return t.exportToCsv()})},p=function(e,t){return $(".submit",e).click(function(){return t.process()}),$(".reset",e).click(function(){return t.reset()}),$(".wg-filter-row input[type=text]",e).keydown(function(e){return 13===e.keyCode?(e.preventDefault(),t.process()):void 0})},e=function(e){var t,n;return n=$("#"+e),(t=n[0])?(t.value=t.value,t.focus()):void 0},c=function(e,t){return $("select.auto-reload",e).change(function(){return t.process()}),$("input.auto-reload",e).keyup(function(){return t.setProcessTimer(this.id)}),$("input.negation-checkbox.auto-reload",e).click(function(){return t.process()}),$(document).bind("wg:calendarChanged_"+t.name,function(){return t.process()})},i=function(){return $(".wg-detached-filter").each(function(e,n){var r;return r=t(n),r?($("select.auto-reload",n).change(function(){return r.process()}),$("input.auto-reload",n).keyup(function(){return r.setProcessTimer(this.id)}),$("input.negation-checkbox.auto-reload",n).click(function(){return r.process()})):void 0})},h=function(e,t){return $(".wg-show-all-link, .wg-back-to-pagination-link",e).click(function(e){var n,r,i;return e.preventDefault(),r=$(this).data("grid-state"),n=$(this).data("confim-message"),i=function(){return t.reloadPageForGivenGridState(r)},n?confirm(n)?i():void 0:i()})},f=function(e){return $(".expand-multi-select-icon",e).click(function(){return $(this).prev().each(function(e,t){return t.multiple=!0}),$(this).next().show(),$(this).hide()}),$(".collapse-multi-select-icon",e).click(function(){return $(this).prev().prev().each(function(e,t){return t.multiple=!1}),$(this).prev().show(),$(this).hide()})},a=function(e){return $(".select-all",e).click(function(){return $(".sel input",e).prop("checked",!0).trigger("change")}),$(".deselect-all",e).click(function(){return $(".sel input",e).prop("checked",!1).trigger("change")})},t=function(e){var t;return t=$(e).data("grid-name"),t?window[t]:null},d=function(){return $(".wg-external-csv-export-button").each(function(e,n){var r;return r=t(n),r?$(n).click(function(){return r.exportToCsv()}):void 0})},l=function(){return $(".wg-external-submit-button").each(function(e,n){var r;return r=t(n),r?$(n).click(function(e){return r.process(),e.preventDefault(),!1}):void 0}),$(".wg-external-reset-button").each(function(e,n){var r;return r=t(n),r?$(n).click(function(e){return r.reset(),e.preventDefault(),!1}):void 0}),$(".wg-detached-filter").each(function(e,n){var r;return r=t(n),r?$("input[type=text]",this).keydown(function(e){return 13===e.keyCode?(r.process(),e.preventDefault(),!1):void 0}):void 0})},window.getGridProcessorForElement=t}).call(this);