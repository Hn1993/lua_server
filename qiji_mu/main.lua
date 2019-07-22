require("TSLib") -- 导入TS LIB库
require("qiji_logic") -- 导入TS LIB库
require("utils") -- 导入TS LIB库
require("repeact") -- 导入TS LIB库
require("qiji_page")
init(1); -- 代表横屏
game_start();

--x,y = findMultiColorInRegionFuzzy( 0x132942, "11|0|0x87cbf6,11|-4|0x84c6f1,28|2|0x89cef9,41|-6|0x89cef9,52|-3|0x89cdf8,52|4|0x8acef9", 80, 506, 161, 899, 483)--找到中级骑士几个字
--nLog("中级骑士-x="..x)
--x,y = findMultiColorInRegionFuzzy( 0xf9e845, "299|38|0xfefefe,291|42|0xfdfdfe,316|40|0xffffff,161|-10|0x86a3bf,179|-1|0x6c809b,-42|-11|0x88a5c1,-47|-11|0x839fba", 90, 499, 571, 937, 697)
--nLog("放入-x="..x)

--jiaoyi_task();	


nLog("task_end");
mSleep(300 * 1000);

x,y = findMultiColorInRegionFuzzy( 0xf9fafc, "29|1|0xffffff,44|-2|0xf7f8f9,911|-287|0xfefefe,926|-289|0xffffff,932|-289|0xfcfcfc,951|-293|0xfbfbfb,1080|-329|0xb5b29f", 90, 0, 0, 1279, 799)
nLog("金币副本页-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xb8c8d7, "0|8|0xc5cdd8,15|-3|0xf1f3f6,24|-3|0xf2f4f6,31|1|0xd1d9e1,56|-3|0xb9c2ce,60|8|0xb9c3ce,23|64|0xf7dd4f", 90, 171, 420, 507, 549)
nLog("刷金副本-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xe1e1e1, "2|5|0xbfbfbe,167|5|0x818ea0,165|11|0x818ea0,166|10|0x818da0,196|5|0x818ea0,186|4|0x818ea0,597|8|0x00baf3,776|649|0xa37940,794|649|0xe3dec8", 90, 0, 0, 1279, 799)
nLog("强化页面-x="..x)


x,y = findMultiColorInRegionFuzzy( 0x5a6065, "707|-30|0x6b7a82,673|-77|0xfff1d0,314|-81|0xffffff,435|-65|0xffffff,444|371|0xa5733a,557|372|0xa8763d,493|372|0xf5f3cf,506|372|0xf4f2ce,528|377|0xf0ecb8", 90, 181, 67, 1171, 718)
nLog("转职对话框-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xfcfcfc, "0|-5|0xffffff,0|8|0xcfc7b6,-15|-5|0xffffff,14|1|0xfefcf8,-5|24|0xffffff,-7|-1|0xbf411b", 90, 656, 611, 767, 689)
nLog("转职-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xe3e3e2, "-1|5|0xbdbdbd,155|3|0x818ea0,167|2|0x818ea0,192|5|0x808d9f,-9|598|0x30343d", 90, 0, 22, 314, 782)
nLog("世界地图-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xf0e8b9, "5|3|0xd7d4a8,4|5|0x2f4d5d,19|4|0xcdc99d,13|3|0xe6e0ad,13|5|0x34515b", 90, 199, 58, 276, 82)
nLog("x_1592-x="..x..y)

x_159,y_159 = findMultiColorInRegionFuzzy( 0xdfd8af, "0|6|0xada985,10|5|0xbfb990,5|3|0xd1c99d,13|3|0xd2cb9f,14|7|0x969376", 90, 209, 61, 261, 78)
nLog("x_159-x="..x_159..y_159)

--tap_and_sleep(  573,  349);--点击一个小点
--tap_and_sleep(40,60);--点击返回
x,y = findMultiColorInRegionFuzzy( 0xa8a897, "0|-20|0xdcdcdc,15|-10|0xb3afa2,18|-10|0xafaf9e,13|0|0xa5a594,13|-20|0xcbcbc3,113|-48|0xf3f3f3,123|-44|0xf7f7f7,127|-41|0xc6c7c6,123|-40|0xe0e0df", 90, 1014, 0, 1275, 85)
nLog("战盟-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xb8c8d7, "0|8|0xc5cdd8,15|-3|0xf1f3f6,24|-3|0xf2f4f6,31|1|0xd1d9e1,56|-3|0xb9c2ce,60|8|0xb9c3ce,23|64|0xf7dd4f", 90, 171, 420, 507, 549)
toast("金币副本-x="..x..y,1)

x,y = findMultiColorInRegionFuzzy( 0x6ed6f0, "0|2|0x3293cc,20|-3|0x81c2ec,20|2|0x7ebee7,36|3|0x81c3ec,61|-1|0x83c5ef,61|5|0x86c9f3,80|0|0x5dd7f1", 90, 477, 164, 927, 508)
nLog("中级骑士-x="..x)
randomTap(x+70,y+30)

flag = baidu_text_ocr(585, 15, 649, 38, "Yeraz1");
nLog("flag="..tostring(flag))

x,y = findMultiColorInRegionFuzzy( 0xebeef2, "-5|11|0xb3c0ce,10|8|0xc7cfd9,19|7|0xcdd4dd,17|-1|0xeff2f4,35|0|0xe9ecf0,53|3|0xe0e4ea,48|2|0xe4e8ed,23|48|0x16e054", 90, 165, 151, 852, 420)
nLog("试炼之地-x="..x..y)

x,y = findMultiColorInRegionFuzzy( 0x8d8578, "65|-22|0x8d8578,49|-80|0x8d8578,2|-122|0xfcfcfc,16|-117|0xfbfbfb,63|-70|0x8d8578,-64|-87|0xb0b09f,-81|-96|0xdad9d9", 90, 1038, 1, 1271, 200)
nLog("战盟-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xe6e6e6, "-2|5|0xbdbdbd,153|5|0x818ea0,154|14|0x808d9f,163|12|0x7d8a9c,165|4|0x818ea0,166|3|0x818da0,166|-1|0x818ea0,192|6|0x818ea0", 90, 1, 39, 1279, 89)
nLog("魂器-x="..x)

while (true) do
	--page = get_page(page_list);
	--nLog("page="..page)
	--mSleep(3000);
	
	x,y = findMultiColorInRegionFuzzy( 0xff5f3b, "4|0|0xf7482b,4|-3|0xf8563a,-4|-3|0xff744f,-4|1|0xf64527,1|4|0xf93919", 85, 157, 94, 1275, 758)
	nLog("内容小红点-x="..x)
	mSleep(3000);
	break
end

x,y = findMultiColorInRegionFuzzy( 0xf5f5f6, "0|6|0xf0f0f1,20|5|0xf9f9f9,20|2|0xf7f8f8,42|0|0xfdfdfd,51|4|0xf0f3f4", 90, 899, 16, 989, 59)
nLog("剩余时间-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xff5f3b, "4|0|0xf7482b,4|-3|0xf8563a,-4|-3|0xff744f,-4|1|0xf64527,1|4|0xf93919", 90, 4, 156, 192, 238)
nLog("小红点-x="..x)

color = isColor( 854,  314, 0xc4f7ff );
nLog("color="..tostring(color))

str = baidu_ai_text(183, 458, 275, 492);
nLog("str-x="..str)



x,y = findMultiColorInRegionFuzzy( 0xe7dbc8, "108|482|0xe0d1bc,1091|520|0xe0d1bc,949|-89|0x83807a,952|382|0xc7b9a3,-3|4|0xefe5d7,-58|403|0x3d3f48,1109|111|0x42434e", 90, 0, 0, 1279, 799)
nLog("设置页-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xfefefe, "0|10|0xfefefe,0|12|0xf0f1f1,15|6|0xfafafb,38|2|0xfafafa,60|4|0xfdfdfe,60|0|0xfdfdfd", 90, 667, 345, 801, 383)
nLog("断开连接-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xdfd8af, "0|6|0xada985,10|5|0xbfb990,5|3|0xd1c99d,13|3|0xd2cb9f,14|7|0x969376", 90, 209, 61, 261, 78)
nLog("159-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xfaf8f5, "0|4|0xfbf9f7,18|3|0xffffff,18|-2|0xffffff,18|8|0xfefdfc,37|8|0xa67038,-27|8|0xa67138,68|-20|0xbbb3b3", 90, 553, 583, 719, 646)
nLog("确定-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xfefefe, "15|4|0xf7f7f8,32|2|0xfbfbfb,50|-2|0xfdfdfd,92|-5|0xfefefe,92|5|0xfdfdfd", 90, 383, 304, 618, 358)
nLog("获取到新版本-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xe2ac5b, "5|5|0xdea652,33|1|0x907652,46|3|0xd8a454,-36|24|0xf1f1f2,19|17|0xf65f58,29|16|0xf55f55,24|23|0xec5a52,35|23|0xf86e5b,41|23|0xcd6456", 90, 47, 200, 232, 249)
nLog("135级-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xbbb491, "7|0|0xcfc79c,11|0|0xc6be96,17|0|0xdad1a5,12|5|0xafa57c,11|3|0x756e5a", 90, 209, 61, 261, 78)
nLog("x-119-2="..x)

x,y = findMultiColorInRegionFuzzy( 0xcecdcf, "42|1|0xefefef,46|2|0xf8f8f8,49|1|0xf0f0f0", 80, 1160, 0, 1240, 24)
nLog("战盟领地-x="..x)


x,y = findMultiColorInRegionFuzzy( 0xb277dd, "6|1|0xbc7ce9,14|1|0xac75d7,18|6|0x986abe,21|10|0x9e6dc4,24|10|0x9e6dc4", 80, 49, 317, 87, 341)
nLog("战盟-x="..x)

x1,y1 = findMultiColorInRegionFuzzy( 0x80b0e1, "8|0|0x7ba8d5,19|3|0x80afdf,19|4|0x7ba6d3,-1|-5|0x79a5cf,0|6|0x7dacdb,8|6|0x7aa4d0,24|5|0x77a1cd", 80, 41, 259, 94, 286)--日常1
			x2,y2 = findMultiColorInRegionFuzzy( 0xb578e0, "0|-5|0xb277dd,8|-5|0xa772d0,8|0|0xaa73d3,19|2|0xb177dd,19|5|0x9f6fc7,23|0|0xa973d2,19|-5|0xa572ce", 80, 41, 259, 94, 286)--日常2
			x3,y3 = findMultiColorInRegionFuzzy( 0x72c38f, "0|-5|0x72c390,0|5|0x71c18e,9|5|0x70be8d,9|0|0x74c792,20|2|0x7ad397,20|4|0x73c490,20|-4|0x6cb58a", 80, 41, 259, 94, 286)--日常3
			x4,y4 = findMultiColorInRegionFuzzy( 0xacb3cc, "0|-5|0xabb2cc,9|-5|0xaab2cb,9|0|0xaeb6cf,20|2|0xb7bfd8,20|4|0xabb3cc,20|-4|0x9ea6c0,9|5|0xa5adc7", 80, 41, 259, 94, 286)--日常4
			x10,y10 = findMultiColorInRegionFuzzy( 0xedb65a, "8|0|0xf4bb5a,19|3|0xf4b957,15|0|0xf2b95a,14|4|0xfdc159,25|-3|0xdaaa5c", 80, 41, 259, 94, 286)--日常5
			x12,y12 = findMultiColorInRegionFuzzy( 0xe1ae59, "8|0|0xcfa257,16|1|0x9c7f53,22|2|0x897252,19|3|0xddac57,20|-4|0xb99255", 80, 41, 259, 94, 286)--日常6
			nLog("x1-x4="..x1..x2..x3..x4..x10..x12)

x,y = findMultiColorInRegionFuzzy( 0xb9bdc5, "3|0|0xadb2bc,-7|0|0xacb1bb,12|5|0xe8e9ec,19|5|0xe8e9ec,30|2|0xb2b7c0,64|5|0x6fc676,75|5|0x74d478,92|5|0x6ab974,103|5|0x6dbf75", 80,  913, 17, 1053, 60)
nLog("离开时间-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xf1f1f1, "-3|-5|0xf3f3f4,29|-6|0xfffef9,40|-1|0xffffff,12|-9|0xf4f3f1,39|-9|0xf7f5f2", 90, 43, 224, 122, 248)
nLog("等级达到-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xffffff, "21|2|0xfdfdfe,33|2|0xfdfdfd,33|-3|0xf9f9fa,53|-4|0xfefefe,70|3|0xfdfdfd", 90, 529, 319, 754, 375)
nLog("无法捡起道具-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xe2d9ab, "7|0|0xd1c9a3,13|0|0xe2d9aa,17|-3|0xd5ceab,11|3|0xded5a1,17|4|0xd8cf9b", 90, 208, 58, 264, 81)
nLog("118-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xdededf, "0|-4|0xebebec,6|-3|0xf7f7f7,17|-3|0xe3e2e3,21|2|0xdbdbdb,17|6|0xb7b6b8", 90, 45, 316, 92, 343)
nLog("战盟-x="..x);

x,y = findMultiColorInRegionFuzzy( 0xe1e2e3, "19|-7|0xfefefe,25|1|0xf5f5f6,36|-5|0xfafafa,40|-5|0xf9f9fa,42|2|0xfdfdfd,51|-5|0xf4f4f4,75|-4|0xfdfdfd", 90, 501, 317, 852, 379)
nLog("是否要加入-x=="..x)

zhu_x,zhu_y = findMultiColorInRegionFuzzy( 0xdca24d, "0|4|0xd99f4d,16|0|0xd7a04e,11|2|0xe5a950,0|9|0xd8a04c,18|7|0xd99f4d", 85, 43, 196, 89, 420);
	nLog("主线-x="..zhu_x)
	nLog("is_today_clickd_experience="..tostring(is_today_clickd_experience))
	nLog("is_today_hang_up_experience="..tostring(is_today_hang_up_experience))
	if zhu_x > -1 then--识别主线2个字
		mSleep(3000);--等待 3S再点
		--tap_and_sleep(zhu_x,zhu_y);--点击主线
		
		--[[bool = findTextUntil("日常",44, 255, 187, 304,1,"日常任务",10,5);
		nLog("bool="..tostring(bool))
		if bool then
			tap_and_sleep(110,280);--点击日常
		else
			tap_and_sleep(zhu_x,zhu_y);--点击主线
		end	
		
		if getNetTime() - baidu_text_recognition_time > 0.5 * 60 * 60 then
			
		end
		]]
		
		
		x1,y1 = findMultiColorInRegionFuzzy( 0x80b0e1, "8|0|0x7ba8d5,19|3|0x80afdf,19|4|0x7ba6d3,-1|-5|0x79a5cf,0|6|0x7dacdb,8|6|0x7aa4d0,24|5|0x77a1cd", 80, 41, 259, 94, 286)--日常1
		x2,y2 = findMultiColorInRegionFuzzy( 0xb578e0, "0|-5|0xb277dd,8|-5|0xa772d0,8|0|0xaa73d3,19|2|0xb177dd,19|5|0x9f6fc7,23|0|0xa973d2,19|-5|0xa572ce", 80, 41, 259, 94, 286)--日常2
		x3,y3 = findMultiColorInRegionFuzzy( 0x72c38f, "0|-5|0x72c390,0|5|0x71c18e,9|5|0x70be8d,9|0|0x74c792,20|2|0x7ad397,20|4|0x73c490,20|-4|0x6cb58a", 80, 41, 259, 94, 286)--日常3
		x4,y4 = findMultiColorInRegionFuzzy( 0xacb3cc, "0|-5|0xabb2cc,9|-5|0xaab2cb,9|0|0xaeb6cf,20|2|0xb7bfd8,20|4|0xabb3cc,20|-4|0x9ea6c0,9|5|0xa5adc7", 80, 41, 259, 94, 286)--日常4
		x5,y5 = findMultiColorInRegionFuzzy( 0x0adf0f, "17|2|0x08e10e,33|5|0x0ecf17,33|8|0x08e60c,51|-2|0x05f008,51|-1|0x01fb02,51|6|0x0ae50e,33|8|0x08e60c", 80, 43, 258, 188, 309)--经验副本
		x6,y6 = findMultiColorInRegionFuzzy( 0x0db819, "0|4|0x0db918,4|4|0x08d50f,11|3|0x07d80e,20|3|0x09d90f,28|6|0x07e10c,45|-1|0x08dd0c,50|-1|0x08df0c", 80, 43, 255, 118, 283)--每日必做
		if x1 > -1 or x2 >-1 or x3 > -1 or x4 >-1 or x5 > -1  then
			nLog("x1>-1")
			--tap_and_sleep(110,280);--点击日常
		else
			nLog("x1<-1="..zhu_x..zhu_y)
			if  x6 > -1 then
				if is_today_clickd_experience == false or is_today_hang_up_experience == false then
					--tap_and_sleep(110,280);--点击日常
				else
					--tap_and_sleep(zhu_x,zhu_y);--点击主线
				end	
			else
				--tap_and_sleep(zhu_x,zhu_y);--点击主线
			end	
			
		end	
		
	end


x,y = findMultiColorInRegionFuzzy( 0xfdfdfd, "7|0|0xfafafa,25|-4|0xf0f1f2,-15|2|0xfafafa,-17|-1|0xc0c2c5,155|-9|0xdbdbd8,172|1|0xb3b09d,155|11|0xa6a695", 90, 888, 6, 1134, 78)
nLog("副本页-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xeff2f4, "84|-68|0xeff0f3,164|-71|0xedeff1,97|13|0x777984,273|22|0xebecf0,63|352|0xab8240,204|357|0xaf7d44,98|353|0xece9d9,150|356|0xe5e1cc", 90, 242, 17, 1176, 736)
nLog("登录-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xe6eaef, "1|0|0xe2e7ed,20|6|0xcfd6df,17|-2|0xf1f3f5,36|-1|0xe8ecf0,48|1|0xe4e8ed,22|47|0x19e055,21|77|0x0ddb35", 90, 508, 173, 836, 294)
nLog("试炼-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xf6bc57, "0|1|0xf8bd58,0|2|0xdaa852,16|-5|0xf0b857,16|-3|0xf0b857,16|-1|0xefb757,15|4|0xe5b056", 90, 44, 314, 92, 342)
nLog("采集-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xe2d9ab, "7|0|0xd1c9a3,11|-1|0xe1d9ad,17|-1|0xe2d9ad,17|2|0xdcd3a2,12|5|0xcac194", 90, 209, 61, 261, 78)
nLog("119-x="..x)
if x > -1 then

end	


x,y = findMultiColorInRegionFuzzy( 0x77dc78, "9|0|0x77dd79,17|3|0x75d677,21|3|0x77dc78,37|-3|0x7ae37a,38|5|0x77de78", 90, 178, 258, 268, 428)
nLog("已完成-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xdbe2e9, "12|4|0xd2d9e1,32|7|0xbfc9d4,54|-2|0xedeff3,23|46|0x14de51,22|79|0x41f45a", 90, 172, 166, 506, 293)
nLog("经验副本-x="..x..y);
			
x,y = findMultiColorInRegionFuzzy( 0xe6e6e6, "592|4|0x04e0fa,821|14|0xe276fa,1035|13|0xfae235,66|656|0xa4a493,6|682|0x615f69,22|659|0xe3e7ec,-2|5|0xbdbdbd", 90, 0, 0, 1279, 799)
nLog("游戏活动-x="..x)

x,y = findMultiColorInRegionFuzzy( 0xdedab3, "0|4|0xb1b499,4|3|0xd2cea7,9|3|0xd9d4a9,10|5|0xc1c09c,13|4|0xc1c19f,18|4|0xbbbc9d,18|3|0xbcbd9f,9|-1|0xc0c2aa", 90, 212, 60, 259, 79)
nLog("160 -x ="..x);

x,y = findMultiColorInRegionFuzzy( 0xd8dfe7, "0|6|0xbfcad6,19|-4|0xecf0f3,31|7|0xbbc6d2,54|7|0xc4cdd7,54|-2|0xedf0f3,53|-2|0xedf0f3,53|8|0xbfc9d4,21|10|0xb4c0cd", 90, 172, 166, 838, 711)
nLog("x="..x.."y="..y)


x,y = findMultiColorInRegionFuzzy( 0x80b0e1, "8|0|0x7ba8d5,19|3|0x80afdf,19|4|0x7ba6d3,-1|-5|0x79a5cf,0|6|0x7dacdb,8|6|0x7aa4d0,24|5|0x77a1cd", 90, 41, 259, 94, 286)
nLog("x="..x)

x,y = findMultiColorInRegionFuzzy( 0xb578e0, "0|-5|0xb277dd,8|-5|0xa772d0,8|0|0xaa73d3,19|2|0xb177dd,19|5|0x9f6fc7,23|0|0xa973d2,19|-5|0xa572ce", 90, 41, 259, 94, 286)
