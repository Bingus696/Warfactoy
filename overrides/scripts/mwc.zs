import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;
//import scripts.CommonVars.makeShaped as makeShaped;

// Add missing material shapes

//Remove all stuff from JEI because bloat
//worthless, I found other way, removes recepies only now
val mwc as IMod = loadedMods["mwc"];
if(!isNull(mwc)) {
    val mwcItems as IItemStack[] = mwc.items;

    for item in mwcItems {
               //mods.jei.JEI.removeAndHide(item); 
               recipes.remove(item); 
            }
        }


//////// ACTIONS ////////

recipes.addShaped(<contenttweaker:action_wrought>, [
  [<ore:ringWroughtIron>, <ore:foilWroughtIron>, null],
  [<ore:screwWroughtIron>, <minecraft:flint_and_steel>, <ore:screwWroughtIron>], 
  [null, <ore:foilWroughtIron>, <ore:ringWroughtIron>]
]);



recipes.addShaped(<contenttweaker:action_steel>*1, [
  [<ore:stickSteel>, <ore:ringSteel>, <ore:stickSteel>],
  [<ore:boltSteel>, <gregtech:meta_gear:324>, <ore:boltSteel>], 
  [<ore:springSmallSteel>, <ore:stickSteel>, <ore:springSmallSteel>]
]);

assembler.recipeBuilder()
  .inputs( [<ore:stickSteel>*2, <ore:ringSteel>, <ore:boltSteel>*2, <gregtech:meta_gear:324>, <ore:springSmallBlackSteel>*2])
  .outputs(<contenttweaker:action_steel>*2)
  .duration(120).EUt(16).buildAndRegister();

assembler.recipeBuilder()
  .inputs( [<ore:stickBlackSteel>*4, <ore:ringBlackSteel>*4, <ore:boltBlackSteel>*4, <metaitem:gearBlackSteel>, <metaitem:springSmallBlackSteel>*2])
  .fluidInputs([<liquid:lubricant> * 72])
  .outputs(<contenttweaker:action_blacksteel>*2)
  .duration(120).EUt(256).buildAndRegister();

assembler.recipeBuilder()
  .inputs( [<ore:stickStainlessSteel>*4, <ore:ringStainlessSteel>*4, <ore:boltSteel>*4, <gregtech:meta_gear:2011>, <metaitem:springSmallStainlessSteel>*2])
  .fluidInputs([<liquid:lubricant> * 72])
  .outputs(<contenttweaker:action_stainless>*2)
  .duration(120).EUt(256).buildAndRegister();

assembler.recipeBuilder()
  .inputs( [<ore:stickTitanium>*6, <ore:ringTitanium>*4, <ore:boltTitanium>*8, <gregtech:meta_gear:2510>, <ore:springSmallHslaSteel>*2])
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<contenttweaker:action_titanium>*2)
  .duration(120).EUt(1024).buildAndRegister();


assembler.recipeBuilder()
  .inputs( [<ore:stickTungstenSteel>*8, <ore:ringTungstenSteel>*4, <ore:boltHssg>*16, <ore:gearIridium>, <ore:springHsse>*4])
  .fluidInputs([<liquid:lubricant> * 288])
  .outputs(<contenttweaker:action_tungstensteel>*2)
  .duration(120).EUt(1024).buildAndRegister();


assembler.recipeBuilder()
    .inputs([<ore:circuitUlv>, <ore:foilWroughtIron>*3, <ore:dustZinc>])
    .fluidInputs(<liquid:toluene> * 80)
    .outputs(<contenttweaker:simple_rocket>*4)
    .duration(60).EUt(8).buildAndRegister();








//////// RECEIVERS ////////


recipes.addShaped(<contenttweaker:receiver_wrought>, [
  [<ore:plateDoubleWroughtIron>, <ore:plateDoubleWroughtIron>, <ore:plateDoubleWroughtIron>],
  [<ore:screwWroughtIron>, <ore:ringWroughtIron>, <ore:stickWroughtIron>], 
  [null, null, <ore:stickWroughtIron>]
]);

recipes.addShaped(<contenttweaker:receiver_steel>, [
  [<ore:plateDoubleSteel>, <ore:plateDoubleSteel>, <ore:plateDoubleSteel>],
  [<ore:screwSteel>, <ore:ringSteel>, <ore:stickSteel>], 
  [null, null, <ore:stickSteel>]
]);

recipes.addShaped(<contenttweaker:receiver_aluminium>, [
  [<ore:plateDoubleAluminium>, <ore:plateDoubleAluminium>, <ore:plateDoubleAluminium>],
  [<ore:screwAluminium>, <ore:ringAluminium>, <ore:stickAluminium>], 
  [null, null, <ore:stickAluminium>]
]);

recipes.addShaped(<contenttweaker:receiver_stainless>, [
  [<ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>, <ore:plateDoubleStainlessSteel>],
  [<ore:screwStainlessSteel>, <ore:ringStainlessSteel>, <ore:stickStainlessSteel>], 
  [null, null, <ore:stickStainlessSteel>]
]);

recipes.addShaped(<contenttweaker:receiver_titanium>, [
  [<ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>, <ore:plateDoubleTitanium>],
  [<ore:screwTitanium>, <ore:ringTitanium>, <ore:stickTitanium>], 
  [null, null, <ore:stickTitanium>]
]);

recipes.addShaped(<contenttweaker:receiver_tungstensteel>, [
  [<ore:plateDoubleTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>],
  [<ore:screwTungstenSteel>, <ore:ringTungstenSteel>, <ore:stickTungstenSteel>], 
  [null, null, <ore:stickTungstenSteel>]
]);










//////// BARRELS ////////

recipes.addShaped(<contenttweaker:barrel_steel>, [
  [null, <ore:stickSteel>, <ore:foilSteel>],
  [<ore:stickSteel>, <ore:foilSteel>, <ore:stickSteel>], 
  [<ore:foilSteel>, <ore:stickSteel>, null]
]);

lathe.recipeBuilder()
  .inputs([<ore:stickLongVanadiumSteel>])
  .outputs(<contenttweaker:barrel_vanadiumsteel>)
  .duration(200).EUt(120).buildAndRegister();

lathe.recipeBuilder()
  .inputs([<ore:stickLongBlueSteel>])
  .outputs(<contenttweaker:barrel_bluesteel>)
  .duration(200).EUt(502).buildAndRegister();

lathe.recipeBuilder()
  .inputs([<ore:stickLongUltimet>])
  .outputs(<contenttweaker:barrel_ultimet>)
  .duration(200).EUt(1920).buildAndRegister();

lathe.recipeBuilder()
  .inputs([<ore:stickLongHsss>])
  .outputs(<contenttweaker:barrel_hss>)
  .duration(200).EUt(7680).buildAndRegister();




assembler.recipeBuilder()
    .inputs([<ore:foilSteel>, <ore:dustIron>])
    .fluidInputs(<liquid:toluene> * 200)
    .outputs(<mwc:m18white>*8)
    .duration(80).EUt(7).buildAndRegister();




//////// ULV GUNS ////////
oreDict.oogaboogaguns;
val oogaboogaguns = <ore:gunsUlv>;
oogaboogaguns.add(<mwc:mares_leg>);
oogaboogaguns.add(<mwc:mp43e>);
oogaboogaguns.add(<mwc:g2_contender>);

<ore:oogaboogaguns>.addTooltip(format.gray("ULV-tier gun"));

recipes.addShaped(<mwc:mares_leg>, [
  [<ore:screwWroughtIron>, null, <ore:screwWroughtIron>],
  [<contenttweaker:barrel_steel>, <contenttweaker:action_wrought>, <contenttweaker:receiver_wrought>], 
  [<ore:craftingToolSoftHammer>, <ore:plateTreatedWood>, <ore:craftingToolScrewdriver>]
]);

recipes.addShaped(<mwc:mp43e>, [
  [<contenttweaker:barrel_steel>, <ore:boltWroughtIron>, null],
  [<contenttweaker:barrel_steel>, <contenttweaker:action_wrought>, <contenttweaker:receiver_wrought>], 
  [<ore:craftingToolSoftHammer>, <ore:plateTreatedWood>, <ore:craftingToolScrewdriver>]
]);


recipes.addShaped(<mwc:g2_contender>, [
  [<contenttweaker:barrel_steel>, <contenttweaker:receiver_wrought>],
  [null, <ore:plateTreatedWood>]
]);


//////// LV GUNS ////////
oreDict.lvGuns;
val gunslv = <ore:gunsLv>;

gunslv.add(<mwc:m1_garand>);
gunslv.add(<mwc:m1897>);
gunslv.add(<mwc:springfield>);

<ore:gunslv>.addTooltip(format.gold("LV-tier gun"));

assembler.recipeBuilder()
  .inputs([<gregtech:planks:1>*3, <ore:stickLongSteel>*2, <ore:plateSteel>*3, <contenttweaker:action_steel>, <contenttweaker:barrel_steel>, <contenttweaker:receiver_steel>, <ore:boltSteel>*4] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:springfield>)
  .duration(2400).EUt(30).buildAndRegister();


assembler.recipeBuilder()
  .inputs([<gregtech:planks:1>*2,<ore:stickTreatedWood>*4, <ore:stickLongSteel>, <ore:plateSteel>*4, <contenttweaker:action_steel>, <contenttweaker:barrel_steel>, <contenttweaker:receiver_steel>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:m1_garand>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<gregtech:planks:1>*1,<ore:stickTreatedWood>*1, <ore:stickLongSteel>*2, <ore:plateSteel>*3, <contenttweaker:action_steel>, <contenttweaker:barrel_steel>, <contenttweaker:receiver_steel>, <gregtech:meta_item_1:172>, <ore:foilSteel>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:m1897>)
  .duration(2400).EUt(30).buildAndRegister();

//////// MV GUNS ////////

oreDict.mvGuns;
val gunsmv = <ore:gunsMv>;

gunsmv.add(<mwc:ak47>);
gunsmv.add(<mwc:svd_dragunov>);
gunsmv.add(<mwc:supernova>);
gunsmv.add(<mwc:m79>);
gunsmv.add(<mwc:mac10>);
gunsmv.add(<mwc:python>);

<ore:mvGuns>.addTooltip(format.darkAqua("MV-tier gun"));

assembler.recipeBuilder()
  .inputs([<gregtech:planks:1>*4, <ore:stickLongSteel>*2, <ore:plateDenseBlackSteel>*3, <contenttweaker:action_blacksteel>, <contenttweaker:barrel_vanadiumsteel>, <contenttweaker:receiver_aluminium>, <gregtech:meta_item_1:172>, <ore:foilSteel>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:ak47>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<gregtech:planks:1>*4, <ore:stickLongSteel>*1, <ore:plateBlackSteel>*5, <contenttweaker:action_blacksteel>, <contenttweaker:barrel_vanadiumsteel>*2, <contenttweaker:receiver_aluminium>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:svd_dragunov>)
  .duration(2400).EUt(30).buildAndRegister();
  
assembler.recipeBuilder()
  .inputs([<ore:platePolyvinylChloride>*4, <ore:stickLongSteel>*1, <ore:plateBlackSteel>*5, <contenttweaker:action_blacksteel>, <contenttweaker:barrel_vanadiumsteel>*2, <contenttweaker:receiver_aluminium>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:supernova>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateAluminium>*2, <ore:springBlackSteel>, <ore:boltVanadiumSteel>] )
  .outputs(<mwc:ak74mag>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:pipeNormalFluidVanadiumSteel>, <ore:stickLongSteel>*1, <ore:plateDenseBlackSteel>*6, <contenttweaker:action_blacksteel>, <contenttweaker:receiver_aluminium>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:m79>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:stickSteel>*1, <ore:plateBlackSteel>*5, <contenttweaker:action_blacksteel>, <contenttweaker:barrel_vanadiumsteel>*1, <contenttweaker:receiver_aluminium>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:mac10>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateAluminium>*2, <ore:springSmallBlackSteel>*2, <ore:boltBlackSteel>] )
  .outputs(<mwc:mac10mag>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateVanadiumSteel>*2, <contenttweaker:action_blacksteel>, <contenttweaker:barrel_vanadiumsteel>*1, <contenttweaker:receiver_aluminium>, <ore:plateTreatedWood>] )
  .fluidInputs([<liquid:lubricant> * 144])
  .outputs(<mwc:python>)
  .duration(2400).EUt(30).buildAndRegister();

//////// HV GUNS ////////

val gunshv = <ore:gunsHv>;

gunshv.add(<mwc:m4a1>);
gunshv.add(<mwc:spas_12>);
gunshv.add(<mwc:m17>);
gunshv.add(<mwc:mp7>);

assembler.recipeBuilder()
  .inputs([<ore:plateDenseGunMetal>*2, <contenttweaker:action_stainless>, <contenttweaker:barrel_bluesteel>*1, <contenttweaker:receiver_stainless>, <ore:stickPolytetrafluoroethylene>, <ore:platePolytetrafluoroethylene>*2, <ore:boltGunMetal>*16, <ore:springSmallGunMetal>] )
  .fluidInputs([<liquid:lubricant> * 288])
  .outputs(<mwc:m4a1>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateGunMetal>*2, <ore:springBlackSteel>, <ore:boltGunMetal>] )
  .outputs(<mwc:m4a1mag_2>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateGunMetal>*18, <contenttweaker:action_stainless>, <contenttweaker:barrel_bluesteel>*1, <contenttweaker:receiver_stainless>, <ore:stickLongGunMetal>*2, <ore:platePolytetrafluoroethylene>*3, <ore:boltGunMetal>*8] )
  .fluidInputs([<liquid:lubricant> * 288])
  .outputs(<mwc:spas_12>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateGunMetal>*5, <contenttweaker:action_stainless>, <contenttweaker:barrel_bluesteel>*1, <contenttweaker:receiver_stainless>, <ore:platePolytetrafluoroethylene>*1, <ore:boltGunMetal>*4, <ore:springSmallGunMetal>] )
  .fluidInputs([<liquid:lubricant> * 288])
  .outputs(<mwc:m17>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:foilGunMetal>*2, <ore:plateGunMetal>, <ore:springSmallBlackSteel>, <ore:boltGunMetal>] )
  .outputs(<mwc:m17mag>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateGunMetal>*5, <contenttweaker:action_stainless>, <contenttweaker:barrel_bluesteel>*1, <contenttweaker:receiver_stainless>, <ore:platePolytetrafluoroethylene>*1, <ore:boltGunMetal>*4, <ore:springSmallGunMetal>, <ore:stickGunMetal>] )
  .fluidInputs([<liquid:lubricant> * 288])
  .outputs(<mwc:mp7>)
  .duration(2400).EUt(30).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateGunMetal>*2, <ore:springSmallBlackSteel>, <ore:boltGunMetal>] )
  .outputs(<mwc:mp7mag>)
  .duration(2400).EUt(30).buildAndRegister();

//////// EV GUNS ////////

oreDict.gunsev;
val gunsev = <ore:gunsEv>;

gunsev.add(<mwc:ngsw_r>);
gunsev.add(<mwc:origin12>);
gunsev.add(<mwc:vss_vintorez>); 
gunsev.add(<mwc:p90>);
gunsev.add(<mwc:ssg_08>);
gunsev.add(<mwc:glock_19>);


assembler.recipeBuilder()
  .inputs([<ore:plateDenseGunSteel>*4, <ore:platePolyvinylButyral>*5, <ore:stickLongGunSteel>*2, <contenttweaker:action_titanium>, <contenttweaker:barrel_ultimet>*2, <contenttweaker:receiver_titanium>,<gregtech:meta_item_1:175>,<ore:springHssg>] )
  .fluidInputs([<liquid:lubricant> * 500])
  .outputs(<mwc:ngsw_r>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateDenseGunSteel>*8, <ore:platePolycaprolactam>*15, <ore:stickLongGunSteel>*4, <contenttweaker:action_titanium>, <contenttweaker:barrel_ultimet>*2, <contenttweaker:receiver_titanium>,<gregtech:meta_item_1:175>,<ore:springHssg>] )
  .fluidInputs([<liquid:lubricant> * 500])
  .outputs(<mwc:vss_vintorez>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolyvinylButyral>*4, <ore:springGunSteel>, <ore:boltUltimet>*4] )
  .fluidInputs([<liquid:polytetrafluoroethylene>*144])
  .outputs(<mwc:ngswr_mag>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateDoubleHslaSteel>*4, <ore:platePolyvinylButyral>*9, <contenttweaker:action_titanium>, <contenttweaker:barrel_ultimet>*1, <contenttweaker:receiver_titanium>, <ore:boltGunSteel>*16, <ore:springNichrome>] )
  .fluidInputs([<liquid:lubricant> * 500])
  .outputs(<mwc:p90>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolyvinylButyral>*4, <ore:springSmallGunMetal>*2])
  .fluidInputs([<liquid:polytetrafluoroethylene>*144])
  .outputs(<mwc:p90mag>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateDoubleGunSteel>*4, <ore:platePolyvinylButyral>*18, <ore:stickLongTitanium>, <contenttweaker:action_titanium>, <contenttweaker:barrel_ultimet>*2, <contenttweaker:receiver_titanium>,<ore:springHssg>] )
  .fluidInputs([<liquid:lubricant> * 500])
  .outputs(<mwc:origin12>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolyvinylButyral>*4, <ore:springSmallKanthal>*2] )
  .fluidInputs([<liquid:polytetrafluoroethylene>*144])
  .outputs(<mwc:origin12mag>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolycaprolactam>*4, <ore:platePolyvinylButyral>*2, <ore:springSmallNichrome>*2] )
  .fluidInputs([<liquid:polytetrafluoroethylene>*144])
  .outputs(<mwc:vssvintorezmag_2>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateDenseGunSteel>*4, <ore:platePolyvinylButyral>*18, <ore:stickLongTitanium>*2, <contenttweaker:action_titanium>, <contenttweaker:barrel_ultimet>*4, <contenttweaker:receiver_titanium>])
  .fluidInputs([<liquid:lubricant> * 500])
  .outputs(<mwc:ssg_08>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolycaprolactam>*4, <ore:springSmallHssg>*4] )
  .fluidInputs([<liquid:polytetrafluoroethylene>*144])
  .outputs(<mwc:ssg08mag>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateGunSteel>*3, <ore:platePolyvinylButyral>*4, <ore:stickLongTitanium>*2, <contenttweaker:action_titanium>, <contenttweaker:barrel_ultimet>*1, <contenttweaker:receiver_titanium>])
  .fluidInputs([<liquid:lubricant> * 500])
  .outputs(<mwc:glock_19>)
  .duration(2400).EUt(1920).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:foilGunMetal>*4, <ore:springSmallHssg>*4] )
  .fluidInputs([<liquid:polytetrafluoroethylene>*144])
  .outputs(<mwc:glockmag13>)
  .duration(2400).EUt(1920).buildAndRegister();

//////// IV GUNS ////////

assembler.recipeBuilder()
  .inputs([<ore:plateDenseIncoloyMa956>*4, <ore:platePolybenzimidazole>*5, <ore:stickLongRuridit>*2, <contenttweaker:action_tungstensteel>, <contenttweaker:barrel_hss>*2, <contenttweaker:receiver_tungstensteel>,<ore:boltIridium>*64, <ore:springNiobiumTitanium>*2] )
  .fluidInputs([<liquid:lubricant> * 4000])
  .outputs(<mwc:scar_h_cqc>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolybenzimidazole>*6, <ore:springSmallIncoloyMa956>*2, <ore:boltOsmium>*32  ])
  .fluidInputs(<liquid:polybenzimidazole>*1500)
  .outputs(<mwc:scar40mag>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateDenseIridium>*2, <ore:platePolybenzimidazole>*4, <ore:boltRuridit>*8, <contenttweaker:action_tungstensteel>, <contenttweaker:barrel_hss>, <contenttweaker:receiver_tungstensteel>,<ore:springHsss>*2] )
  .fluidInputs([<liquid:lubricant> * 4000])
  .outputs(<mwc:desert_eagle>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolybenzimidazole>*3, <ore:springSmallNiobiumTitanium>*2, <ore:boltOsmium>*16  ])
  .fluidInputs(<liquid:polybenzimidazole>*1500)
  .outputs(<mwc:deserteaglemag>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateIridium>*32, <ore:platePolybenzimidazole>*4, <ore:boltHsss>*8, <contenttweaker:action_tungstensteel>, <contenttweaker:barrel_hss>, <contenttweaker:receiver_tungstensteel>,<ore:springHssg>*2] )
  .fluidInputs([<liquid:lubricant> * 4000])
  .outputs(<mwc:kriss_vector>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolybenzimidazole>*6, <ore:springSmallIncoloyMa956>*1, <ore:boltIridium>*16  ])
  .fluidInputs(<liquid:polybenzimidazole>*1500)
  .outputs(<mwc:vectormag>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:plateOsmium>*32, <ore:platePolybenzimidazole>*16, <ore:boltOsmium>*48, <contenttweaker:action_tungstensteel>, <contenttweaker:barrel_hss>*2, <contenttweaker:receiver_tungstensteel>,<ore:springRuridit>*4] )
  .fluidInputs([<liquid:lubricant> * 4000])
  .outputs(<mwc:l96a1>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolybenzimidazole>*16, <ore:springOsmium>*1, <ore:boltIridium>*48, <ore:stickRuridit>*8  ])
  .fluidInputs(<liquid:polybenzimidazole>*3000)
  .outputs(<mwc:origin12drummag>)
  .duration(2400).EUt(8192).buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:platePolybenzimidazole>*16, <ore:springOsmium>*2, <ore:ringTungstenSteel>*48, <ore:stickLongIncoloyMa956>*8  ])
  .fluidInputs(<liquid:polybenzimidazole>*3000)
  .outputs(<mwc:asvalmag>)
  .duration(2400).EUt(8192).buildAndRegister();
