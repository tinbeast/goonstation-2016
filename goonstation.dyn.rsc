�    ����\    �   reginaldhj.txt general
	key = "ReginaldHJ"
	ckey = "reginaldhj"
	gender = "male"
	joined = "2012-02-21"
	desc = "oh god it's small bart"
	icon = "http://www.byond.com/member_icons/r/e/reginaldhj/images/medium_icon.gif"
�    �p��\    n   nuketwoski.txt general
	key = "Nuke_twoski"
	ckey = "nuketwoski"
	gender = "neuter"
	joined = "2011-09-22"
	online = 1
J%   I�w ��\    *%  pathoComp.html <!DOCTYPE html> <html> <head> <title>Pathogen Manipulator</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <script src=http://cdn.goonhub.com/js/jquery.min.js type=text/javascript></script> <!--<script src="./json2.min.js" type="text/javascript"></script>--> <script src=http://cdn.goonhub.com/js/pathology_display.js type=text/javascript></script> <script src=http://cdn.goonhub.com/js/pathoui-script.js type=text/javascript></script> <link href=http://cdn.goonhub.com/css/pathoui.css rel=stylesheet type=text/css> </head> <body> <div class=mainContent> <!--Displays information about the currently loaded pathogen--> <div id=loadedPathogen> <div class=noborder> <span class=label>DNA Load Status: </span> <div class="annunciator a-green" id=annDNALoad> LOAD </div> <div class="annunciator a-red" id=annDNANoLoad> NO LOAD </div> <div class="annunciator a-yellow" id=annDNASplice> SPLICE </div> <span class=label>Pathogen: </span> <div class="text-field tf-med" id=txtPName>G68P68</div> <div class="text-field tf-med" id=txtPType>(fungus)</div> </div> <div class=noborder> <span class=label>Slot: </span> <div class="text-field tf-narrow" id=txtExpSlot>1</div> <div class="annunciator a-yellow" id=annSlotExp>EXPOSED</div> <div class="annunciator a-green" id=annSlotSample>SAMPLE</div> <div class="button btn-small" id=btnCloseSlot>Close</div> <div class="button btn-small" id=btnEjectSample>Eject</div> </div> <div class=noborder> <span class=label>DNA Seq: </span><br> <div class="text-field tf-long" id=txtPSeq> </div> </div> </div> <!--Displays the currently selected page--> <div class=dataDisplay> <div class=dataPage id=dpManip> <h1>DNA Manipulator</h1> <div id=manipHolder> <div class="narrow-border extrapad"> <span class="label lb-long">Status:</span> <div class="annunciator a-green" id=aMutRdy>READY</div> <div class="annunciator a-yellow" id=aMutIrr>RAD</div> <div class="annunciator a-green" id=aMutAck>PASS</div> <span class="label lb-long"></span> <div class="annunciator a-red" id=aMutOpen>EXPOSED</div> <div class="annunciator a-red" id=aMutSample>SAMPLE</div> <div class="annunciator a-red" id=aMutNack>FAIL</div> </div> <table> <tr> <td><span class="label lb-long">Mutativeness:</span></td> <td><div class="button btn-tiny" data-tsk="mut=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMut></div></td> <td><div class="button btn-tiny" data-tsk="mut=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Mutation Speed:</span></td> <td><div class="button btn-tiny" data-tsk="mts=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMts></div></td> <td><div class="button btn-tiny" data-tsk="mts=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Advance Speed:</span></td> <td><div class="button btn-tiny" data-tsk="adv=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtAdv></div></td> <td><div class="button btn-tiny" data-tsk="adv=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Maliciousness:</span></td> <td><div class="button btn-tiny" data-tsk="mal=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtMal></div></td> <td><div class="button btn-tiny" data-tsk="mal=1">+</div></td> </tr> <tr> <td><span class="label lb-long">Suppression Threshold:</span></td> <td><div class="button btn-tiny" data-tsk="sth=-1">-</div></td> <td><div class="text-field tf-narrow" id=txtSth></div></td> <td><div class="button btn-tiny" data-tsk="sth=1">+</div></td> </tr> </table> </div> </div> <div class=dataPage id=dpSplice1> <h1>Select splice target</h1> <span class="label lb-slong">The loaded DNA will be modified during this session.</span> <div class="noborder splice-selection"> <div class="noborder slot-holder" id=spliceSlots> </div> <div class="narrow-border button-holder" id=spliceButtons> <div class="annunciator a-red" id=annSpliceStatExp>EXPOSED</div> <div class="annunciator a-green" id=annSpliceStatSource>SOURCE</div> <div class="annunciator a-green" id=annSpliceStatTarget>TARGET</div> <hr> <div class=button id=btnSpliceBegin>Begin<br>Splice</div> <div class=button id=btnSpliceCancel>Cancel<br>Splice</div> </div> </div> </div> <div class=dataPage id=dpSplice2> <h1>Splicing Session</h1> <div class="noborder splice-selection"> <!--DATA HOLDER--> <div class=noborder id=spliceData> <div class="extrapad button-holder prediction-holder"> <span class="label lb-long">Predictive Effectiveness:</span> <div class="text-field tf-med txtPredEffect"></div> <div class="button btn-med display-known">Sequences</div> </div> <div class="extrapad splice-sequence" id=spliceTargetField> <span class="label lb-long">Target sequence:</span> <div class="text-field tf-long" id=txtSpliceTarget></div> <div class="button btn-small btn-seq-off" dir=-1>-</div> <div class="button btn-small btn-seq-off" dir=1>+</div> <span class=label>Status:</span> <div class="annunciator a-red" id=annSpliceTargetEmpty>EMPTY</div> </div> <div class="button-holder extrapad splice-controls" id=spliceActions> <span class="label lb-elong">Splice actions:</span> <div class="button btn-small" dir=-1>Before</div> <div class="button btn-small" dir=1>After</div> <div class="button btn-small" dir=0>Remove</div> </div> <div class="extrapad splice-sequence" id=spliceSourceField> <span class="label lb-long">Source sequence:</span> <div class="text-field tf-long" id=txtSpliceSource></div> <div class="button btn-small btn-seq-off" dir=-1>-</div> <div class="button btn-small btn-seq-off" dir=1>+</div> <span class=label>Status:</span> <div class="annunciator a-red" id=annSpliceSourceEmpty>EMPTY</div> </div> </div> <!--FINALIZING BUTTONS--> <div class="button-holder extrapad" id=spliceFinalButtons> <span class="label lb-med">Splice status:</span> <div class="annunciator a-green" id=annSpliceSuccess>SUCCESS</div> <div class="annunciator a-red" id=annSpliceFail>FAIL</div> <span class=label>Prediction:</span> <div class="annunciator a-green" id=annPredSuccess>SUCCESS</div> <div class="annunciator a-yellow" id=annPredUnk>UNKNOWN</div> <div class="annunciator a-red" id=annPredFail>FAIL</div> <hr> <div class=button id=btnSpliceFinish>Finish Splicing</div> </div> </div> </div> <div class=dataPage id=dpTester> <h1>DNA Stability Analyzer</h1> <div class=noborder id=analyzerHolder> <!--SHOWING PREDICTIVE EFFECTIVENESS--> <div class="narrow-border extrapad button-holder" id=predictionHolder> <span class="label lb-long">Predictive Effectiveness:</span> <div class="text-field tf-med txtPredEffect"></div> <div class="button btn-med display-known">Sequences</div> </div> <!--HOLDING BOTH ANALYSIS BUFFERS (current / previous) --> <div class="noborder extramargin"> <div class="narrow-border analysis-buffer extrapad" id=currAnalysis> <span class="label lb-long block">Current analysis:</span> <div class="text-field tf-enarrow" id=currAnalysis0></div> <div class="text-field tf-enarrow" id=currAnalysis1></div> <div class="text-field tf-enarrow" id=currAnalysis2></div> <div class="text-field tf-enarrow" id=currAnalysis3></div> <div class="text-field tf-enarrow" id=currAnalysis4></div> <div class="button btn-tinyish" id=btnClrAnalysisCurr>CLR</div> </div> <div class="narrow-border analysis-buffer extrapad" id=prevAnalysis> <span class="label lb-long block">Previous analysis:</span> <div class="text-field tf-enarrow" id=prevAnalysis0></div> <div class="text-field tf-enarrow" id=prevAnalysis1></div> <div class="text-field tf-enarrow" id=prevAnalysis2></div> <div class="text-field tf-enarrow" id=prevAnalysis3></div> <div class="text-field tf-enarrow" id=prevAnalysis4></div> </div> </div> <div class="noborder extramargin"> <div class="extrapad button-holder" id=analyzeComponents> </div> <div class="narrow-border extrapad" id=analyzeResults> <span class=label>Stable:</span> <div class="annunciator a-green" id=annStableYes>YES</div> <div class="annunciator a-red" id=annStableNo>NO</div> <span class=label>Transient:</span> <div class="annunciator a-green" id=annTransYes>YES</div> <div class="annunciator a-red" id=annTransNo>NO</div> <hr> <span class=label>Error:</span> <div class="annunciator a-red" id=annErrBuffer>BUFFER</div> <div class="annunciator a-red" id=annErrNack>NACK</div> <span class=label></span> <div class="annunciator a-yellow" id=annErrSample>SAMPLE</div> <div class="annunciator a-yellow" id=annErrData>T. DATA</div> </div> </div> <div class="button btn-long" id=btnAnalysisLoad>Load Sample &amp; Clear Buffer</div> <div class="button btn-long" id=btnAnalysisDoTest>Test DNA</div> </div> </div> <div class=dataPage id=dpLoadSave> <h1>Load / Save DNA</h1> <div class="noborder slot-holder" id=dnaSlotHolder> </div> </div> <div class=dataPage id=dpWelcome> <h1>Welcome to the Path-o-matic 2000</h1> <span>The leading market solution for pathology research.</span> <span>This device is capable of the following:</span> <ul> <li>DNA Sequence Verification</li> <li>DNA Sequence Splicing</li> <li>DNA Trait Segment Manipulation</li> <li>Predictive Stability Analysis</li> <li>Pathogen Sample Identification</li> </ul> </div> </div> <!--The main menu, used for scrolling through the pages--> <div id=mainMenu> <div class=button id=btnRetMain>Main Screen</div> <div class=button id=btnManip>Manipulate</div> <div class=button id=btnSplice>Splice</div> <div class=button id=btnTester>DNA Analyzer</div> <div class=button id=btnLoadSave>Load / Save DNA</div> <div class="annunciator a-yellow" id=annSynch>SYNCH</div> </div> </div> </body> </html>/   օ�� ��\      create_object.html <!DOCTYPE html> <html> <head> <title>Create Object</title> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/style.css> </head> <body id=createobj> <form name=spawner action="byond://?src=/* ref src */" method=get> <input type=hidden name=src value="/* ref src */"> <input type=hidden name=action value=object_list> Type <input type=text name=filter style=width:280px onkeydown=submitFirst(event)><input type=button name=search value=Search onclick=updateSearch() style=width:70px><br> Offset: <input type=text name=offset value=x,y,z style=width:250px> A <input type=radio name=offset_type value=absolute> R <input type=radio name=offset_type value=relative checked><br> Direction: S<input type=radio name=one_direction value=2 checked> SE<input type=radio name=one_direction value=6> E<input type=radio name=one_direction value=4> NE<input type=radio name=one_direction value=5> N<input type=radio name=one_direction value=1> NW<input type=radio name=one_direction value=9> W<input type=radio name=one_direction value=8> SW<input type=radio name=one_direction value=10><br> Number: <input type=text name=object_count value=1 style=width:330px> <br><br> <div id=selector_hs> <select name=type id=object_list multiple size=20> </select> </div> <br> <input type=submit value=spawn> </form> <script language=JavaScript> var old_search = "";
		var object_list = document.spawner.object_list;
		var object_list_container = document.getElementById('selector_hs');
		var object_paths = null /* object types */;
		var objects = object_paths == null ? new Array() : object_paths.split(";");
		
		document.spawner.filter.focus();
		populateList(objects);
		
		function populateList(from_list)
		{
			var newOpts = '';
			var i;
			for (i in from_list)
			{
				newOpts += '<option value="' + from_list[i] + '">'
					+ from_list[i] + '</option>';
			}
			object_list_container.innerHTML = '<select name="type" id="object_list" multiple size="20">' + 
			newOpts + '</select>';
		}
		
		function updateSearch()
		{
			if (old_search == document.spawner.filter.value)
			{
				return false;
			}
			
			old_search = document.spawner.filter.value;
			
			
			var filtered = new Array();
			var i;
			for (i in objects)
			{
				if(objects[i].search(old_search) < 0)
				{
					continue;
				}
				
				filtered.push(objects[i]);
			}
			
			populateList(filtered);
			
			if (object_list.options.length)
				object_list.options[0].selected = 'true';
			
			return true;
		}
		
		function submitFirst(event)
		{
			if (event.keyCode == 13 || event.which == 13)
			{
				if (updateSearch())
				{
					if (event.stopPropagation) event.stopPropagation();
					else event.cancelBubble = true;

					if (event.preventDefault) event.preventDefault();
					else event.returnValue = false;
				}
			}
		} </script> </body> </html>�    ������\    m   flaborized.txt general
	key = "Flaborized"
	ckey = "flaborized"
	gender = "neuter"
	joined = "2017-12-01"
	online = 1
�    L\9�\    h   cleanyourteeth.txt general
	key = "Clean Your Teeth"
	ckey = "cleanyourteeth"
	gender = "male"
	joined = "2019-01-17"
:   ���Z��\      tooltip.html <!DOCTYPE html> <html> <head> <title>Tooltip</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/font-awesome.css> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/tooltip.css> </head> <body> <div id=wrap class=wrap> <div id=content class=content></div> <a href=# class=close-tip style="display: none"><i class=icon-remove></i></a> </div> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.min.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.waitForImages.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/errorHandler.js></script> <script type=text/javascript src=http://cdn.goonhub.com/js/animatePopup.js></script> <script type=text/javascript> var tooltipRef = 'TOOLTIPREFPLACE';
		var tooltipDebug = false; </script> <script type=text/javascript src=http://cdn.goonhub.com/js/tooltip.js></script> </body> </html>�    ��ΐ0�\    q   quiltyquilty.txt general
	key = "Quiltyquilty"
	ckey = "quiltyquilty"
	gender = "female"
	joined = "2015-09-22"
	online = 1
�    ��>R�\    g   captainsheepy.txt general
	key = "Captain Sheepy"
	ckey = "captainsheepy"
	gender = "female"
	joined = "2015-12-20"
�   �|C[��\    �  browserOutput.html <!DOCTYPE html> <html> <head> <title>Chat</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <meta http-equiv=Content-Type content="text/html; charset=UTF-8"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/font-awesome.css> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/browserOutput.css> <script type=text/javascript src=http://cdn.goonhub.com/js/jquery.min.js></script> <!-- <script type="text/javascript" src="http://cdn.goonhub.com/js/array.generics.min.js"></script> --> </head> <body> <div id=loading> <i class="icon-spinner icon-2x"></i> <div> Loading...<br><br> If this takes longer than 30 seconds, it will automatically reload a maximum of 5 times.<br> If it STILL doesn't work, please post a report here: <a href="https://forum.ss13.co/viewforum.php?f=7">https://forum.ss13.co/viewforum.php?f=7</a> </div> </div> <div id=messages> </div> <div id=userBar style="display: none"> <div id=ping> <i class=icon-circle id=pingDot></i> <span class=ms id=pingMs>--ms</span> </div> <div id=options> <a href=# class=toggle id=toggleOptions title=Options><i class=icon-cog></i></a> <div class=sub id=subOptions> <a href=# class=decreaseFont id=decreaseFont><span>Decrease font size</span> <i class=icon-font>-</i></a> <a href=# class=increaseFont id=increaseFont><span>Increase font size</span> <i class=icon-font>+</i></a> <a href=# class=chooseFont id=chooseFont>Change font <i class=icon-font></i></a> <a href=# class=togglePing id=togglePing><span>Toggle ping display</span> <i class=icon-circle></i></a> <a href=# class=highlightTerm id=highlightTerm><span>Highlight string</span> <i class=icon-tag></i></a> <!-- <a href="#" class="saveLog" id="saveLog"><span>Save chat log</span> <i class="icon-save"></i></a> --> <a href=# class=clearMessages id=clearMessages><span>Clear all messages</span> <i class=icon-eraser></i></a> </div> </div> </div> <audio id=play-music class=hidden autoplay></audio> <script type=text/javascript src=http://cdn.goonhub.com/js/errorHandler.js></script> <!-- <script type="text/javascript" src="http://cdn.goonhub.com/js/anchorme.js"></script> --> <script type=text/javascript src=http://cdn.goonhub.com/js/browserOutput.js></script> </body> </html>*    ǡp\��\       parser.html Go away nerd.�    �#촼�\    o   thecannonman.txt general
	key = "TheCannonMan"
	ckey = "thecannonman"
	gender = "male"
	joined = "2017-10-14"
	online = 1
{    D�;�\    \   omjenkins.txt general
	key = "OMJenkins"
	ckey = "omjenkins"
	gender = "male"
	joined = "2014-01-25"
�   P�A]��\    �  changelog.html <style type=text/css> .postcard {display: block; margin: 10px auto; width: 300px;}
	h1 {font-size: 2.5em; padding: 0 10px; margin: 0; color: #115FD5;}
	h1 a {display: block; float: right;}
	.links {list-style-type: none; margin: 15px 5px; padding: 0; border: 1px solid #ccc; color: #333;}
	.links li {float: left; width: 50%; text-align: center; background: #f9f9f9; padding: 10px 0; position: relative;}
	.links li span {position: absolute; top: 0; right: 0; bottom: 0; width: 1px; background: #ccc;}

	.log {list-style-type: none; padding: 0; background: #f9f9f9; margin: 20px 5px; border: 1px solid #ccc; font-size: 1em; color: #333;}
	.log li {padding: 5px 5px 5px 20px; border-top: 1px solid #ccc; line-height: 1.4}
	.log li.title {background: #efefef; font-size: 1.7em; color: #115FD5; padding: 10px 10px; border-top: 0;}
	.log li.date {background: #f1f1f1; font-size: 1.1em; font-weight: bold; padding: 8px 5px; border-bottom: 2px solid #bbb;}
	.log li.admin {font-size: 1.2em; padding: 5px 5px 5px 10px;}
	.log li.admin span {color: #2A76E7;}

	h3 {padding: 0 10px; margin: 0; color: #115FD5;}
	.team, .lic {padding: 10px; margin: 0; line-height: 1.4;}
	.lic {font-size: 0.9em;} </style> <!-- HTML GOES HERE -->�    ��9�]��\    e   johnwarcrimes.txt general
	key = "John_Warcrimes"
	ckey = "johnwarcrimes"
	gender = "male"
	joined = "2016-12-12"
m   y������\    K  adminOutput.html <div id=contextMenu class=contextMenu style="display: none"> <a href=# id=ctx_pm>Admin PM</a> <a href=# id=ctx_smsg>Subtle Msg</a> <a href=# id=ctx_jump>Jump To</a> <a href=# id=ctx_get>Get</a> <a href=# id=ctx_boot>Boot</a> <a href=# id=ctx_ban>Ban</a> <a href=# id=ctx_gib>Gib</a> <a href=# id=ctx_popt>Player Options</a> <a href=# id=ctx_observe>Observe</a> <a href=# id=ctx_ghostjump>Teleport To</a> </div> <script type=text/javascript> /* DO NOT USE LINE COMMENTS (//) IN THIS FILE FOR THE LOVE OF GOD */

opts.menuTypes = { /* Action flags for context menu */
	1:  'pm',
	2:  'smsg',
	4:  'boot',
	8:  'ban',
	16: 'gib',
	32: 'popt',
	64: 'jump',
	128: 'get',
	512: 'ghostjump',
};
opts.contextMenuTarget = null; /* Contains the player mind ref */
opts.showMessagesFilters = { /* Contains the current filters. "show: false" filters it out. "match" is all the css classes to filter on. */
	'All': {show: true},
	'Admin': {show: true, match: ['admin']},
	'Combat': {show: true, match: ['combat']},
	'Radios': {show: true, match: ['radio']},
	'Speech': {show: true, match: ['say']},
	'OOC': {show: true, match: ['ooc']},
	'Misc': {show: true},
};
opts.filterHideAll = false;

$contextMenu = $('#contextMenu');
$subOptions.append('<a href="#" class="filterMessagesOpt" id="filterMessagesOpt"><span>Filter Messages</span> <i class="icon-filter"></i></a>');

function openContextMenu(flags, target, x, y) {
	for (var i in opts.menuTypes) {
		$('#ctx_' + opts.menuTypes[i])[(flags & i) === 0 ? 'hide' : 'show']();
	}
	
	$contextMenu.hide(0, function() {
		if (($contextMenu.height() + y) > ($(window).height() - 16)) {
			y -= $contextMenu.height() + 4;
		}
		$contextMenu.css({top: y + 2, left: x + 2});
		$contextMenu.slideDown(200);
	});

	opts.contextMenuTarget = target;
}

function hideContextMenu() {
	$contextMenu.slideUp(200);
	opts.contextMenuTarget = null;
}

function toggleFilter(type) {
	if (type == 'All') {
		if (opts.showMessagesFilters['All'].show === true) {
			$.each(opts.showMessagesFilters, function(key) {
				opts.showMessagesFilters[key].show = false;
				if (key != 'All') {
					$('#filter_'+key).prop('checked', false);
				}
			});
			$('#messages .entry *:nth-child(1):not(.internal)').parent('.entry').addClass('hidden').attr('data-filter', 'All');
			opts.filterHideAll = true;
			output('<span class="internal boldnshit">Hiding <strong>ALL</strong> messages. Uhhh are you sure about this?</span>');
		} else {
			$.each(opts.showMessagesFilters, function(key) {
				opts.showMessagesFilters[key].show = true;
				if (key != 'All') {
					$('#filter_'+key).prop('checked', true);
				}
			});
			$('#messages .entry.hidden[data-filter]').removeClass('hidden');
			opts.filterHideAll = false;
			output('<span class="internal boldnshit">Showing <strong>ALL</strong> messages</span>');
		}
	} else {
		var onoff = !opts.showMessagesFilters[type].show;
		opts.showMessagesFilters[type].show = onoff;
		var allTrue = true;
		var allFalse = true;
		$.each(opts.showMessagesFilters, function(key, val) {
			if (key != 'All') {
				if (allTrue)
					allTrue = (val.show ? true : false);
				if (allFalse)
					allFalse = (val.show ? false : true);
			}
		});
		opts.showMessagesFilters['All'].show = (allTrue ? true : false);
		$('#filter_All').prop('checked', (allTrue ? true : false));

		if (allTrue) {
			opts.filterHideAll = false;
			$('#messages .entry.hidden[data-filter]').removeClass('hidden');
		} else if (allFalse) {
			opts.filterHideAll = true;
			$('#messages .entry *:nth-child(1):not(.internal)').each(function(i, el) {
				$(el).parent('.entry').addClass('hidden').attr('data-filter', 'All');
			});
		} else if (typeof opts.showMessagesFilters[type].match != 'undefined') { /* If the filter has classes to match against */
			/* Hide/Show all prior messages */
			for (var i = 0; i < opts.showMessagesFilters[type].match.length; i++) {
				var thisClass = opts.showMessagesFilters[type].match[i];
				if (onoff) { /* showing */
					$('#messages .entry.hidden[data-filter="'+type+'"]').removeClass('hidden');
				} else { /* hiding */
					$('#messages .'+thisClass).each(function(i, el) {
						$(el).closest('.entry').addClass('hidden').attr('data-filter', type);
					});
				}
			}
		} else if (type == 'Misc') {
			if (onoff) {
				$('#messages .entry.hidden[data-filter="Misc"]').removeClass('hidden');
			} else {
				$('#messages .entry *:nth-child(1):not([class]), #messages .entry:not(:has(>*))').each(function(i, el) {
					$(el).parent('.entry').addClass('hidden').attr('data-filter', 'Misc');
				});
			}
		}

		var msg = (onoff ? 'Showing' : 'Filtering <strong>OUT</strong>') + ' messages of type <strong>'+type+'</strong>';
		output('<span class="internal boldnshit">'+msg+'</span>');
	}
	console.log('filters is: ', opts.showMessagesFilters);
}

$contextMenu.on('mousedown', function(e) {
	e.preventDefault();
	var target = $(e.target);
	var id = target.attr('id');
	if (!id) {
		output('<span class="internal boldnshit">Failed to retrieve context menu command data. Report this bug.</span>');
	} else {
		var command = target.attr('id').substring(4);
		runByond('byond://?action=ehjax&type=datum&datum=chatOutput&proc=handleContextMenu&param[command]=' + command + '&param[target]=' + opts.contextMenuTarget);
	}
});

$messages.on('contextmenu', '.adminHearing .name', function(e) {
	var $this = $(this);
	var mind = $this.attr('data-ctx');
	var flags = $this.closest('.adminHearing').attr('data-ctx');
	if (mind && flags) {
		openContextMenu(flags, mind, e.clientX, e.clientY);
		return false;
	}
	else {
		if (!mind && !flags) {
			output('<span class="internal boldnshit">Failed to retrieve context menu option data. Report this bug.</span>');
		}
	}
});

$subOptions.on('click', '#filterMessagesOpt', function(e) {
	if ($('#filterMessages').is(':visible')) {return;}
	var content = '<div class="head">Filter Messages</div>'+
		'<div id="filterMessages" class="filterMessages">';
	$.each(opts.showMessagesFilters, function(key, val) {
		content += '<div><input type="checkbox" id="filter_'+key+'" name="'+key+'" value="'+key+'" '+(val.show ? 'checked="checked" ' : '')+'/> <label for="filter_'+key+'">'+key+'</label></div>';
	});
	content += '</div>';
	createPopup(content, 150);
});

$('body').on('click', '#filterMessages input', function() {
	var type = $(this).val();
	console.log('hit change event with type: '+type);
	toggleFilter(type);
	$('body,html').scrollTop($messages.outerHeight());
}); </script>j   �3��%�\    J  flaborized.txt general
	key = "Flaborized"
	ckey = "flaborized"
	gender = "neuter"
	joined = "2017-12-01"
	online = 1
world/1
	name = "Space Station 13"
	path = "Exadv1.SpaceStation13"
	hub_url = "http://www.byond.com/games/Exadv1/SpaceStation13"
	icon = "http://www.byond.com/games/hubicon/8266.png"
	small_icon = "http://www.byond.com/games/hubicon/8266_s.png"
	banner = "http://www.byond.com/games/banners/8266.png"
	status = "<b>LLJK-510 US 0.85</b> &#8212; <big><b>Military Laboratory 2053</b></big> (<a href=\"http://ss13.co/\">Goon Station 13</a> r1): extended, AI"
	players = 1
v   �_��(�\    R  cleanyourteeth.txt general
	key = "Clean Your Teeth"
	ckey = "cleanyourteeth"
	gender = "male"
	joined = "2019-01-17"
	online = 1
world/1
	name = "Space Station 13"
	path = "Exadv1.SpaceStation13"
	hub_url = "http://www.byond.com/games/Exadv1/SpaceStation13"
	icon = "http://www.byond.com/games/hubicon/8266.png"
	small_icon = "http://www.byond.com/games/hubicon/8266_s.png"
	banner = "http://www.byond.com/games/banners/8266.png"
	status = "<b>LLJK-510 US 0.85</b> &#8212; <big><b>Military Laboratory 2053</b></big> (<a href=\"http://ss13.co/\">Goon Station 13</a> r1): extended, AI"
	players = 1
w   o7i7<�\    W  nuketwoski.txt general
	key = "Nuke_twoski"
	ckey = "nuketwoski"
	gender = "neuter"
	joined = "2011-09-22"
	online = 1
world/1
	name = "Space Station 13"
	path = "Exadv1.SpaceStation13"
	hub_url = "http://www.byond.com/games/Exadv1/SpaceStation13"
	icon = "http://www.byond.com/games/hubicon/8266.png"
	small_icon = "http://www.byond.com/games/hubicon/8266_s.png"
	banner = "http://www.byond.com/games/banners/8266.png"
	status = "<b>LLJK-510 US 0.85</b> &#8212; <big><b>Military Laboratory 2053</b></big> (<a href=\"http://ss13.co/\">Goon Station 13</a> r1): extended, AI, ~3 players"
	players = 1
E   �ǘ�t�\      quantumTelescope.html <!DOCTYPE html> <html> <head> <title>Quantum telescope</title> <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1"> <link rel=stylesheet type=text/css href=http://cdn.goonhub.com/css/style.css> </head> <body style="overflow:hidden;background-color: black;margin: 0; padding: 0"> <div id=content class=tight style=width:800px;height:435px> <div id=contentInner class=tight style=z-index:0;position:fixed;width:600px;height:400px></div> <div id=contentInspect class=tight style="background-color: black;z-index:9;color:green;display:none;position:fixed;width:600px;height:400px"></div> <div id=contentSide class=tight style="background-color: black;z-index:9;position:fixed;overflow:auto;color: green;border: 1px solid;border-color: #ccc;top:0px;left:600px;width:198px;height:399px"></div> <div id=contentBottom class=tight style="background-color: black;z-index:9;border: 1px solid;border-color: #ccc;position:fixed;top:400px;left:0px;width:599px;height:33px"> <div style=color:green;margin:3px> <div style="padding:5px;display:inline-block;width:50px;height:15px;border: 1px solid;border-color: #ccc;background-color: #333" id=scanbutt>Scan</div><div id=statusText style="margin-left: 10px;display:inline">Ready ...</div> </div> </div> <div id=contentContact class=tight style="background-color: black;padding-top:8px;color:green;text-align: center;border: 1px solid;border-color: #ccc;position:fixed;top:400px;left:600px;width:198px;height:25px"></div> </div> <script src=http://cdn.goonhub.com/js/jquery.min.js></script> <script src=http://cdn.goonhub.com/js/jquery.migrate.js></script> <script src=http://cdn.goonhub.com/js/jquery-ui.min.js></script> <script type=text/javascript> var tabs;
	var ref;
	var scanInterval;
	var scanRunning;

	var setRef = function setRef(theRef) {
    	ref = theRef;
	};

	function callByond(action, data)
	{
        var newLoc = '?src=' + ref + ';jscall=' + action + ';' + data.join(';');
        window.location = newLoc;
	}

	function setHtmlId(element, data)
	{
		$(element).html(data);
	}

	function showContact()
	{
		$( "#contentInspect" ).show();
	}

	function scanProcess()
	{
		var p = $("#scan");
		var posX = (p.position().left + 4);
		p.offset({ top: 0, left: posX});

		if (posX >= 600) {
		    p.hide();
		    clearInterval(window.scanInterval);
		    scanRunning = 0;
		    setHtmlId("#statusText", "Idle ...");
		    callByond("scanComplete", ["posx=" + ($('#scanner').position().left + 25).toString() + "&" + "posy=" + ($('#scanner').position().top + 25).toString() ]);
		}
	}

	function showScan()
	{
		if(window.scanRunning){
			return;
		}

		setHtmlId("#statusText", "Scanning ...");
		$("#scan").show();
		$("#scan").offset({ top: 0, left: 0});
		scanInterval = setInterval(scanProcess, 15);
		scanRunning = 1;
	}

	$(function(){
		$( "#scanbutt" ).click(function( event ) {
			showScan();
		});

		$( "#contentContact" ).click(function( event ) {
			callByond("contact", []);
		});

		$( "#contentInspect" ).click(function( event ) {
			callByond("endinspect", []);
			$( "#contentInspect" ).hide();
		});
	}); </script> </body> </html>E    .����\    3    {"error":"You don't have access to this resource."}[     eyes @   �BBX   blank @   BY   short @   ��f�BBY   none @   �BBx    �/�,�\    Z   lostxeno.txt general
	key = "LostXeno"
	ckey = "lostxeno"
	gender = "male"
	joined = "2019-03-25"
�   ʷ2U���\    |   �PNG

   IHDR           D���   <PLTELiq+++332PPQjijTTT���=����� �����~��YYYzx|IIIh����  ZD   tRNS @��f   dzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT SI��3%���4��L+J�M���\�\�& ��}��C   ~IDAT8��I�0Ckyh����w�)]9�}�7ZHO�駠H��RUt\5$����SJ3`9�g��r�D>jX<P�rԠ���q^�c����NB�u��+b�]ommfb�z���1��tx�W�9O�}�9	�    IEND�B`��    �C��"��\    r   johnwarcrimes.txt general
	key = "John_Warcrimes"
	ckey = "johnwarcrimes"
	gender = "male"
	joined = "2016-12-12"
	online = 1
�  ʷ2U���\    |   �PNG

   IHDR           D���   <PLTELiq+++332PPQjijTTT���=����� �����~��YYYzx|IIIh����  ZD   tRNS @��f   dzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT SI��3%���4��L+J�M���\�\�& ��}��C   ~IDAT8��I�0Ckyh����w�)]9�}�7ZHO�駠H��RUt\5$����SJ3`9�g��r�D>jX<P�rԠ���q^�c����NB�u��+b�]ommfb�z���1��tx�W�9O�}�9	�    IEND�B`�?       DDMI   �  ice100 @���hD5�B 3   'Kj�C�\    !    DDMI   �  ice100 @�������B 3   ����C�\    !    DDMI   �  ice100 @����� �B 3   ƴ��C�\    !    DDMI   �  ice100 @���   �B 3   ��U�C�\    !    DDMI   �  ice100 @���<2 �B 3   ���C�\    !    DDMI   �  ice100 @�������B 3   ��wC�\    !    DDMI   �  ice100 @�����B 3   ݻ�C�\    !    DDMI   �  ice100 @����H�B 3   L��CC�\    !    DDMI   �  ice100 @���'�B 3   ��jC�\    !    DDMI   �  ice100 @�������B 1   ���ND�\        DDMI   �  butt @���   �B �   A`�`D�\    �    DDMI}   
	  head @���   �B Y   eyes @����BBY   short @����BBY   tramp @����BBY   none @����BBM   S�8D�\    ;    DDMI3   �  chest_m @���   �B �  chest_blood @���B3   z����\    !    DDMI   V	  precursor-5fx @����   �V��\    �    DDMI|   
	  head @���   �B Y   eyes @����BBY   short @����BBY   none @����BBY   none @����BB�   7����\    �    DDMI{   
	  head @���   �B Y   eyes @����BBY   pomp @�����F�BBY   none @����BBY   none @����BB,   AQ��\        DDMI   
	  monkey @���;   _�Y��\    )    DDMI!   d  �  eyebot-logout @   B3   A����\    !    DDMI   d  N   blank @   B�   ����U�\    �    DDMI�   X   body_m @���   �B Y   eyes @����BY   short @����BBY   none @����BBY   none @����BBw   none @�������BBB-   �R�#U�\        DDMI   n   preview @����    7H�SU�\    h   internetdweller.txt general
	key = "InternetDweller"
	ckey = "internetdweller"
	gender = "male"
	joined = "2017-07-16"
6    ?wp���\    $    DDMI   �   seeds-ovl @��� � �B z   "�2r��\    ^  kubius.txt general
	key = "Kubius"
	ckey = "kubius"
	gender = "male"
	joined = "2011-01-01"
	online = 1
world/1
	name = "Space Station 13"
	path = "Exadv1.SpaceStation13"
	hub_url = "http://www.byond.com/games/Exadv1/SpaceStation13"
	icon = "http://www.byond.com/games/hubicon/8266.png"
	small_icon = "http://www.byond.com/games/hubicon/8266_s.png"
	banner = "http://www.byond.com/games/banners/8266.png"
	status = "<b>Garbage Jhon's Mapping Emporium QC-CAN 0.85</b> &#8212; <big><b>Star Relay Papa</b></big> (<a href=\"http://ss13.co/\">Goon Station 13</a> r1): extended, AI, ~3 players"
	players = 3
6   wo|r��\    $    DDMI   �   seeds-ovl @�������B 6   ?wp�u��\    $    DDMI   �   seeds-ovl @��� � �B 6   d�^w��\    $    DDMI   �  snackcake @����� �B 6   ���vw��\    $    DDMI   �  snackcake @���T  �B 6   ^�nw��\    $    DDMI   �  snackcake @���3� �B 6   �qv�w��\    $    DDMI   �  snackcake @���ۡ(�B 6   @|Đw��\    $    DDMI   �  snackcake @���� f�B 4   S�-nw��\    "    DDMI   *	  wanted-unknown @���3   �B��w��\    !    DDMI   m	  precursor-2fx @���6   xL�|��\    $    DDMI   �   seeds-ovl @���   �B 6   r}�|��\    $    DDMI   �   seeds-ovl @�������B �   �	:���\    o    DDMIg   d  �  eyebot-logout @   BJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B'   �+�<���\        DDMI   �  ����B 3   �HP���\    !    DDMI   s  paint_overlay @����   �#K���\    �    DDMI�   X   body_m @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B3   ϯr���\    !    DDMI   �  ice100 @���'�B 3   9����\    !    DDMI   �  ice100 @�����P�B 3   �(�}���\    !    DDMI   �  ice100 @���=98�B 3   R��ʇ��\    !    DDMI   �  ice100 @�������B 3   �i���\    !    DDMI   �  ice100 @���ȹ��B 3   �f�S���\    !    DDMI   �  ice100 @����dA�B 3   �.U���\    !    DDMI   �  ice100 @���A�B 3   ���R���\    !    DDMI   �  ice100 @����A�B 3   E�-&���\    !    DDMI   �  ice100 @����  �B 3   8����\    !    DDMI   �  ice100 @���*$�B 3   �EQ���\    !    DDMI   �  ice100 @�������B 3   E�C���\    !    DDMI   �  ice100 @�������B 3   *�T.���\    !    DDMI   �  ice100 @���2���B 3   ��p���\    !    DDMI   �  ice100 @��� ��B 1   gx����\        DDMI   �  butt @���   �B �   A`�`���\    �    DDMI}   
	  head @���   �B Y   eyes @����BBY   short @����BBY   tramp @����BBY   none @����BBM   (��F���\    ;    DDMI3   �  chest_m @���   �B �  chest_blood @���B3   ��
��\    !    DDMI   m	  precursor-5fx @����   �V��\    �    DDMI|   
	  head @���   �B Y   eyes @����BBY   short @����BBY   none @����BBY   none @����BB�   7����\    �    DDMI{   
	  head @���   �B Y   eyes @����BBY   pomp @�����F�BBY   none @����BBY   none @����BB�   ӭ?��\    �    DDMI�   X   body_f @���   �B w   No Underwear @�������BBd  N   blank @   BBJ  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?V  static @���B,   AQ��\        DDMI   
	  monkey @���;   _�Y��\    )    DDMI!   d  �  eyebot-logout @   B3   A����\    !    DDMI   d  N   blank @   B�   ����"��\    �    DDMI�   X   body_m @���   �B Y   eyes @����BY   short @����BBY   none @����BBY   none @����BBw   none @�������BBB-   �R�#"��\        DDMI   n   preview @����  �?�����\    �   �PNG

   IHDR   �   �   ~M(   PLTE������������333fff   ��J   tRNS @��f   pzTXtDescription  x�SVpru��Sp���*K-*���S�U0�3��,�L)� r���83R3�3J ��ĒT SI��3%�����3�(17�6���$V��:Pȥ����� �JV��]�  �IDATh���;��:�a�q�|�X� ���252������Y�@$Q�{��!��z���ƛn�z;�N������m��W�y�LDT4���~��(jֻE)a���N�P��?t���;�Т:��m��?���b������P�_������f�����`WJ��;�+e2r��c��(!��{�u$0�~]�&AI��a����? qp�Ґ�@j�7Tׂ1Z}OAM��JoY����6%$EJwa��"�8�B��RVQZi$�u�)���?���=t���י����� ��X��Υ�m*d���Y�(d]�`��TvU�8�������O��YW�`߷���"+��KM����:(7k=,s�
����w�z�Yzt���F�Χ���!��M��Ù���m��'y��E�Ce�����р^O���6wVG:���9��&�l���s_��I!u���fn�T�b#��@6��[T�*���x�Y_K��	c�0L'4''�3��O��l<�F߹���Y߹�Ag���s9�΁�F߹b:cs���eə$����-����E�}��N���b��.N��oJ�u�}w��&Ε�-���?gcWy����l���E}�r��M�<�;�w��^�]��w.�}�)�o���;�w@󖉂.��;��]v���6��i���1��`��\ƔG���6���X�Ǻ�t�F߹���q�؂��sZ*x�����sy"Fl�f�9M5K6��i(a\
s}�rQ&˞��`n�F�'�բ��,l�D┊r�f�E:�Z�`�F�q��.P�'?��wR�[��˞��`l�pi�-�m��`is��	j,���?m�B�>��/���ޞ����(z���+Ĵ\v��Aߊ��z�*�����J3��a�{o�bOxx�}7��F��),�.��X�T�p?⿾�ǽWܼ�w}����;p�)���Ԯ��CX
�S񠝽��U�*S��{[J�P=hg��E�����{0@ ���*UR���s.;{�7�V�:��A;{o�y��U��{�sHw�>hg������%}���+ҎԲ<=jw��p�'�콞��m��w����N!���9��wŬ�&��ϳ���ؗ��Y�MM�~�����CߩY�M��@!�f>��wx�{S8Ʉ�b��Ҡ�ޛ��D���r�K�ճޛ�
��Q�ܱ��wլ�&>Rh���7�Y�}ٌ�{��� z�F�E'���;!&��i�����_��{���վ�{H������{'����@�����_�y0�Cw^lw8vw��Z���&-�x��}�����6{��Nur���ۋ<<���h����Y�H�V��h\|?Ꟶ�w��d�����gm�]\Pե���f�) Yő^i���=��.B��F�mR�REU��wzaq.r�;�u�N�m�]�]��{�w��6��M�[�����R�f��컘6Y��6��b[�Zm�]&�#Xͭ��ݖ��fn��wy%���S�����u~;�Ò���>8Ӌ�    IEND�B`�7   J5����\    %    DDMI   �  snackcake2 @���3� �B 6   d����\    $    DDMI   �  snackcake @���  ��B 3   >�+����\    !    DDMI   �  ice100 @���� f�B 3   >�!����\    !    DDMI   �  ice100 @���3 f�B 3   �(�(���\    !    DDMI   �  ice100 @���FPF�B 3   �fe���\    !    DDMI   �  ice100 @������B 3   v�N���\    !    DDMI   �  ice100 @���P� �B 3   I�Ԟ���\    !    DDMI   �  ice100 @���<*-�B 3   E�e���\    !    DDMI   �  ice100 @���2  �B 3   V�_Z���\    !    DDMI   �  ice100 @�������B 3   ������\    !    DDMI   �  ice100 @�����l�B 3   E�?+���\    !    DDMI   �  ice100 @����  �B 