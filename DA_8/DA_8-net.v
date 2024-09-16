
// Generated by Cadence Genus(TM) Synthesis Solution 21.14-s082_1
// Generated on: Sep  3 2024 15:28:52 IST (Sep  3 2024 09:58:52 UTC)

// Verification Directory fv/DA_8 

module DA_8(a, b, z);
  input [7:0] a, b;
  output [15:0] z;
  wire [7:0] a, b;
  wire [15:0] z;
  wire n_1, n_2, n_3, n_4, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15, n_16;
  wire n_17, n_18, n_19, n_20, n_21, n_22, n_23, n_24;
  wire n_25, n_26, n_27, n_28, n_29, n_30, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_47, n_48;
  wire n_49, n_51, n_52, n_53, n_54, n_55, n_56, n_57;
  wire n_58, n_59, n_60, n_61, n_62, n_63, n_64, n_65;
  wire n_66, n_67, n_68, n_69, n_70, n_71, n_72, n_73;
  wire n_74, n_75, n_76, n_77, n_78, n_79, n_80, n_81;
  wire n_82, n_83, n_84, n_85, n_86, n_87, n_88, n_89;
  wire n_90, n_91, n_92, n_93, n_94, n_95, n_96, n_97;
  wire n_98, n_99, n_100, n_102, n_103, n_104, n_105, n_106;
  wire n_107, n_108, n_109, n_110, n_111, n_112, n_113, n_114;
  wire n_115, n_116, n_117, n_118, n_119, n_120, n_121, n_122;
  wire n_123, n_124, n_125, n_126, n_127, n_128, n_129, n_130;
  wire n_131, n_132, n_133, n_134, n_135, n_136, n_137, n_138;
  wire n_139, n_140, n_141, n_142, n_143, n_145, n_146, n_147;
  wire n_148, n_149, n_150, n_151, n_152, n_153, n_154, n_155;
  wire n_156, n_157, n_158, n_159, n_160, n_161, n_162, n_163;
  wire n_165, n_166, n_167, n_168, n_169, n_170, n_171, n_172;
  wire n_173, n_174, n_175, n_176, n_177, n_178, n_179, n_180;
  wire n_181, n_182, n_183, n_184, n_185, n_186, n_187, n_188;
  wire n_189, n_190, n_191, n_192, n_193, n_194, n_195, n_196;
  wire n_197, n_198, n_199, n_200, n_201, n_202, n_203, n_204;
  wire n_205, n_206, n_207, n_208, n_209, n_210, n_211, n_212;
  wire n_213, n_215, n_216, n_217, n_218, n_219, n_220, n_221;
  wire n_222, n_223, n_224, n_225, n_226, n_228, n_229, n_231;
  wire n_232, n_234, n_235, n_237, n_238, n_240, n_241, n_243;
  wire n_244, n_246, n_247, n_249, n_250;
  AO22X2 g2720__2398(.A0 (n_250), .A1 (n_249), .B0 (n_133), .B1
       (n_132), .Y (z[15]));
  CLKXOR2X2 g2721__5107(.A (n_250), .B (n_249), .Y (z[14]));
  OAI22XL g2722__6260(.A0 (n_246), .A1 (n_247), .B0 (n_197), .B1
       (n_198), .Y (n_249));
  CLKXOR2X2 g2723__4319(.A (n_247), .B (n_246), .Y (z[13]));
  CLKXOR2X2 g2725__8428(.A (n_243), .B (n_244), .Y (z[12]));
  AOI22XL g2724__5526(.A0 (n_244), .A1 (n_243), .B0 (n_213), .B1
       (n_212), .Y (n_246));
  CLKXOR2X2 g2727__6783(.A (n_241), .B (n_240), .Y (z[11]));
  OAI22XL g2726__3680(.A0 (n_241), .A1 (n_240), .B0 (n_224), .B1
       (n_223), .Y (n_244));
  CLKXOR2X2 g2729__1617(.A (n_237), .B (n_238), .Y (z[10]));
  AOI22XL g2728__2802(.A0 (n_238), .A1 (n_237), .B0 (n_217), .B1
       (n_218), .Y (n_241));
  OAI22XL g2730__1705(.A0 (n_234), .A1 (n_235), .B0 (n_222), .B1
       (n_221), .Y (n_238));
  CLKXOR2X2 g2731__5122(.A (n_235), .B (n_234), .Y (z[9]));
  CLKXOR2X2 g2733__8246(.A (n_232), .B (n_231), .Y (z[8]));
  AOI22XL g2732__7098(.A0 (n_232), .A1 (n_231), .B0 (n_208), .B1
       (n_209), .Y (n_234));
  CLKXOR2X2 g2735__6131(.A (n_228), .B (n_229), .Y (z[7]));
  OAI22XL g2734__1881(.A0 (n_229), .A1 (n_228), .B0 (n_219), .B1
       (n_220), .Y (n_232));
  CLKXOR2X2 g2737__5115(.A (n_225), .B (n_226), .Y (z[6]));
  AOI22XL g2736__7482(.A0 (n_226), .A1 (n_225), .B0 (n_215), .B1
       (n_216), .Y (n_229));
  MXI2XL g2739__4733(.A (n_224), .B (n_207), .S0 (n_223), .Y (n_240));
  XNOR2X1 g2740__6161(.A (n_222), .B (n_221), .Y (n_235));
  XNOR2X1 g2741__9315(.A (n_220), .B (n_219), .Y (n_228));
  CLKXOR2X1 g2742__9945(.A (n_218), .B (n_217), .Y (n_237));
  MXI2XL g2746__2883(.A (n_174), .B (n_216), .S0 (n_215), .Y (n_226));
  CLKXOR2X2 g2756__2346(.A (n_210), .B (n_211), .Y (z[5]));
  CLKXOR2X1 g2738__1666(.A (n_213), .B (n_212), .Y (n_243));
  OAI22XL g2751__7410(.A0 (n_211), .A1 (n_210), .B0 (n_194), .B1
       (n_193), .Y (n_225));
  MXI2XL g2743__6417(.A (n_192), .B (n_209), .S0 (n_208), .Y (n_231));
  INVXL g2745(.A (n_207), .Y (n_224));
  AOI22XL g2749__5477(.A0 (n_203), .A1 (n_204), .B0 (n_186), .B1
       (n_187), .Y (n_219));
  OAI22XL g2750__2398(.A0 (n_205), .A1 (n_206), .B0 (n_188), .B1
       (n_189), .Y (n_218));
  MXI2XL g2753__5107(.A (n_175), .B (n_201), .S0 (n_202), .Y (n_217));
  MXI2XL g2757__6260(.A (n_206), .B (n_173), .S0 (n_205), .Y (n_222));
  CLKXOR2X1 g2759__4319(.A (n_204), .B (n_203), .Y (n_215));
  OAI22XL g2748__8428(.A0 (n_202), .A1 (n_201), .B0 (n_190), .B1
       (n_191), .Y (n_207));
  AOI22XL g2752__5526(.A0 (n_199), .A1 (n_200), .B0 (n_176), .B1
       (n_177), .Y (n_221));
  XNOR2X1 g2754__6783(.A (n_195), .B (n_196), .Y (n_223));
  CLKXOR2X1 g2758__3680(.A (n_200), .B (n_199), .Y (n_208));
  XNOR2X1 g2744__1617(.A (n_198), .B (n_197), .Y (n_247));
  OAI22XL g2747__2802(.A0 (n_196), .A1 (n_195), .B0 (n_178), .B1
       (n_179), .Y (n_213));
  MXI2XL g2770__1705(.A (n_194), .B (n_185), .S0 (n_193), .Y (n_211));
  AOI21XL g2763__5122(.A0 (n_181), .A1 (n_180), .B0 (n_182), .Y
       (n_220));
  INVXL g2760(.A (n_192), .Y (n_209));
  XNOR2X1 g2764__8246(.A (n_191), .B (n_190), .Y (n_202));
  XNOR2X1 g2766__7098(.A (n_189), .B (n_188), .Y (n_205));
  CLKXOR2X1 g2771__6131(.A (n_187), .B (n_186), .Y (n_203));
  INVXL g2780(.A (n_185), .Y (n_194));
  AOI22XL g2755__1881(.A0 (n_184), .A1 (n_183), .B0 (n_135), .B1
       (n_134), .Y (n_197));
  CLKXOR2X1 g2761__5115(.A (n_184), .B (n_183), .Y (n_212));
  NOR2XL g2765__7482(.A (n_181), .B (n_180), .Y (n_182));
  NAND2BXL g2767__4733(.AN (n_180), .B (n_181), .Y (n_192));
  XNOR2X1 g2762__6161(.A (n_179), .B (n_178), .Y (n_196));
  CLKXOR2X1 g2768__9315(.A (n_177), .B (n_176), .Y (n_199));
  OAI21XL g2788__9945(.A0 (n_159), .A1 (n_160), .B0 (n_161), .Y
       (n_185));
  INVXL g2776(.A (n_175), .Y (n_201));
  OAI22XL g2778__2883(.A0 (n_167), .A1 (n_168), .B0 (n_148), .B1
       (n_147), .Y (n_175));
  OAI22XL g2775__2346(.A0 (n_165), .A1 (n_166), .B0 (n_152), .B1
       (n_151), .Y (n_200));
  INVXL g2781(.A (n_174), .Y (n_216));
  INVXL g2777(.A (n_173), .Y (n_206));
  OAI22XL g2774__1666(.A0 (n_172), .A1 (n_171), .B0 (n_150), .B1
       (n_149), .Y (n_181));
  CLKXOR2X1 g2787__7410(.A (n_172), .B (n_171), .Y (n_186));
  AOI22XL g2772__6417(.A0 (n_169), .A1 (n_170), .B0 (n_153), .B1
       (n_154), .Y (n_195));
  XNOR2X1 g2783__5477(.A (n_170), .B (n_169), .Y (n_190));
  XNOR2X1 g2789__2398(.A (n_168), .B (n_167), .Y (n_188));
  XNOR2X1 g2786__5107(.A (n_166), .B (n_165), .Y (n_180));
  CLKXOR2X2 g2782__6260(.A (n_162), .B (n_163), .Y (z[4]));
  OAI22XL g2779__4319(.A0 (n_157), .A1 (n_158), .B0 (n_138), .B1
       (n_139), .Y (n_173));
  AOI22XL g2773__8428(.A0 (n_163), .A1 (n_162), .B0 (n_142), .B1
       (n_143), .Y (n_210));
  XNOR2X1 g2784__5526(.A (n_155), .B (n_156), .Y (n_178));
  NAND2XL g2790__6783(.A (n_160), .B (n_159), .Y (n_161));
  NAND2BXL g2791__3680(.AN (n_159), .B (n_160), .Y (n_174));
  CLKXOR2X1 g2785__1617(.A (n_158), .B (n_157), .Y (n_176));
  OAI22XL g2769__2802(.A0 (n_156), .A1 (n_155), .B0 (n_140), .B1
       (n_141), .Y (n_184));
  OAI22XL g2792__1705(.A0 (n_146), .A1 (n_145), .B0 (n_28), .B1 (n_29),
       .Y (n_204));
  MXI2XL g2793__5122(.A (n_131), .B (n_154), .S0 (n_153), .Y (n_169));
  MXI2XL g2797__8246(.A (n_152), .B (n_130), .S0 (n_151), .Y (n_165));
  MXI2XL g2798__7098(.A (n_150), .B (n_127), .S0 (n_149), .Y (n_172));
  MXI2XL g2801__6131(.A (n_148), .B (n_129), .S0 (n_147), .Y (n_167));
  MXI2XL g2800__1881(.A (n_146), .B (n_128), .S0 (n_145), .Y (n_159));
  CLKXOR2X2 g2799__5115(.A (n_137), .B (n_136), .Y (z[3]));
  CLKXOR2X1 g2794__7482(.A (n_143), .B (n_142), .Y (n_163));
  XNOR2X1 g2795__4733(.A (n_141), .B (n_140), .Y (n_156));
  MXI2XL g2796__6161(.A (n_139), .B (n_108), .S0 (n_138), .Y (n_157));
  AND2X1 g2802__9315(.A (n_137), .B (n_136), .Y (n_162));
  CLKXOR2X1 g2803__9945(.A (n_135), .B (n_134), .Y (n_183));
  MXI2XL g2804__2883(.A (n_2), .B (n_133), .S0 (n_132), .Y (n_250));
  INVXL g2808(.A (n_131), .Y (n_154));
  INVXL g2817(.A (n_130), .Y (n_152));
  INVXL g2816(.A (n_129), .Y (n_148));
  INVXL g2815(.A (n_128), .Y (n_146));
  INVXL g2818(.A (n_127), .Y (n_150));
  AOI22XL g2810__2346(.A0 (n_113), .A1 (n_114), .B0 (n_87), .B1 (n_88),
       .Y (n_158));
  CLKXOR2X1 g2828__1666(.A (n_123), .B (n_124), .Y (n_142));
  MXI2XL g2829__7410(.A (n_46), .B (n_119), .S0 (n_120), .Y (n_136));
  XNOR2X1 g2830__6417(.A (n_125), .B (n_126), .Y (n_138));
  AOI22XL g2805__5477(.A0 (n_117), .A1 (n_118), .B0 (n_91), .B1 (n_92),
       .Y (n_140));
  AOI22XL g2806__2398(.A0 (n_111), .A1 (n_112), .B0 (n_99), .B1
       (n_100), .Y (n_166));
  AOI22XL g2807__5107(.A0 (n_126), .A1 (n_125), .B0 (n_85), .B1 (n_86),
       .Y (n_168));
  AOI22XL g2809__6260(.A0 (n_124), .A1 (n_123), .B0 (n_89), .B1 (n_90),
       .Y (n_193));
  MXI2XL g2826__4319(.A (n_45), .B (n_121), .S0 (n_122), .Y (n_128));
  CLKXOR2X1 g2824__8428(.A (n_109), .B (n_110), .Y (n_129));
  OAI22XL g2812__5526(.A0 (n_115), .A1 (n_116), .B0 (n_95), .B1 (n_96),
       .Y (n_177));
  OAI22XL g2813__6783(.A0 (n_122), .A1 (n_121), .B0 (n_81), .B1 (n_82),
       .Y (n_187));
  OAI22XL g2814__3680(.A0 (n_120), .A1 (n_119), .B0 (n_83), .B1 (n_84),
       .Y (n_143));
  CLKXOR2X1 g2819__1617(.A (n_118), .B (n_117), .Y (n_153));
  MXI2XL g2821__2802(.A (n_116), .B (n_44), .S0 (n_115), .Y (n_151));
  CLKXOR2X1 g2822__1705(.A (n_114), .B (n_113), .Y (n_130));
  CLKXOR2X1 g2823__5122(.A (n_112), .B (n_111), .Y (n_127));
  AOI22XL g2811__8246(.A0 (n_110), .A1 (n_109), .B0 (n_93), .B1 (n_94),
       .Y (n_131));
  INVXL g2831(.A (n_108), .Y (n_139));
  MXI2XL g2834__7098(.A (n_103), .B (n_75), .S0 (n_102), .Y (n_141));
  OAI22XL g2827__6131(.A0 (n_105), .A1 (n_104), .B0 (n_22), .B1 (n_23),
       .Y (n_132));
  MXI2XL g2835__1881(.A (n_107), .B (n_76), .S0 (n_106), .Y (n_147));
  OAI22XL g2820__5115(.A0 (n_107), .A1 (n_106), .B0 (n_40), .B1 (n_41),
       .Y (n_170));
  MXI2XL g2833__7482(.A (n_105), .B (n_77), .S0 (n_104), .Y (n_198));
  OAI21XL g2836__4733(.A0 (n_78), .A1 (n_79), .B0 (n_80), .Y (n_108));
  OAI22XL g2825__6161(.A0 (n_103), .A1 (n_102), .B0 (n_30), .B1 (n_31),
       .Y (n_135));
  CLKXOR2X2 g2843__9315(.A (n_98), .B (n_97), .Y (z[2]));
  MXI2XL g2838__9945(.A (n_1), .B (n_100), .S0 (n_99), .Y (n_111));
  OAI22XL g2832__2883(.A0 (n_98), .A1 (n_97), .B0 (n_61), .B1 (n_62),
       .Y (n_137));
  XNOR2X1 g2839__2346(.A (n_96), .B (n_95), .Y (n_115));
  MXI2XL g2840__1666(.A (n_4), .B (n_94), .S0 (n_93), .Y (n_110));
  MXI2XL g2841__7410(.A (n_5), .B (n_92), .S0 (n_91), .Y (n_117));
  MXI2XL g2844__6417(.A (n_49), .B (n_90), .S0 (n_89), .Y (n_124));
  MXI2XL g2845__5477(.A (n_3), .B (n_88), .S0 (n_87), .Y (n_113));
  MXI2XL g2846__2398(.A (n_6), .B (n_86), .S0 (n_85), .Y (n_126));
  XNOR2X1 g2847__5107(.A (n_84), .B (n_83), .Y (n_120));
  XNOR2X1 g2848__6260(.A (n_82), .B (n_81), .Y (n_122));
  NAND2XL g2837__4319(.A (n_79), .B (n_78), .Y (n_80));
  NAND2BXL g2842__8428(.AN (n_78), .B (n_79), .Y (n_189));
  INVXL g2850(.A (n_77), .Y (n_105));
  INVXL g2849(.A (n_76), .Y (n_107));
  INVXL g2856(.A (n_75), .Y (n_103));
  OAI22XL g2857__5526(.A0 (n_69), .A1 (n_70), .B0 (n_32), .B1 (n_33),
       .Y (n_75));
  OAI22XL g2852__6783(.A0 (n_67), .A1 (n_68), .B0 (n_20), .B1 (n_21),
       .Y (n_77));
  OAI22XL g2853__3680(.A0 (n_65), .A1 (n_66), .B0 (n_18), .B1 (n_19),
       .Y (n_114));
  OAI22XL g2854__1617(.A0 (n_55), .A1 (n_56), .B0 (n_36), .B1 (n_37),
       .Y (n_118));
  OAI22XL g2855__2802(.A0 (n_73), .A1 (n_74), .B0 (n_47), .B1 (n_48),
       .Y (n_112));
  OAI22XL g2851__1705(.A0 (n_51), .A1 (n_52), .B0 (n_24), .B1 (n_25),
       .Y (n_76));
  OAI22XL g2858__5122(.A0 (n_63), .A1 (n_64), .B0 (n_34), .B1 (n_35),
       .Y (n_125));
  OAI22XL g2859__8246(.A0 (n_53), .A1 (n_54), .B0 (n_16), .B1 (n_17),
       .Y (n_123));
  OAI22XL g2862__7098(.A0 (n_59), .A1 (n_60), .B0 (n_42), .B1 (n_43),
       .Y (n_109));
  OAI22XL g2861__6131(.A0 (n_57), .A1 (n_58), .B0 (n_26), .B1 (n_27),
       .Y (n_160));
  OAI22XL g2860__1881(.A0 (n_71), .A1 (n_72), .B0 (n_38), .B1 (n_39),
       .Y (n_79));
  XNOR2X1 g2869__5115(.A (n_74), .B (n_73), .Y (n_81));
  XNOR2X1 g2864__7482(.A (n_72), .B (n_71), .Y (n_95));
  CLKXOR2X1 g2865__4733(.A (n_70), .B (n_69), .Y (n_91));
  CLKXOR2X1 g2866__6161(.A (n_68), .B (n_67), .Y (n_134));
  CLKXOR2X1 g2867__9315(.A (n_66), .B (n_65), .Y (n_99));
  CLKXOR2X1 g2868__9945(.A (n_64), .B (n_63), .Y (n_87));
  XNOR2X1 g2874__2883(.A (n_62), .B (n_61), .Y (n_98));
  CLKXOR2X1 g2870__2346(.A (n_60), .B (n_59), .Y (n_85));
  CLKXOR2X1 g2871__1666(.A (n_58), .B (n_57), .Y (n_89));
  CLKXOR2X1 g2872__7410(.A (n_56), .B (n_55), .Y (n_93));
  XNOR2X1 g2873__6417(.A (n_54), .B (n_53), .Y (n_83));
  XNOR2X1 g2863__5477(.A (n_52), .B (n_51), .Y (n_78));
  AND2X2 g2879__2398(.A (n_13), .B (n_97), .Y (z[1]));
  INVXL g2876(.A (n_49), .Y (n_90));
  XNOR2X1 g2883__5107(.A (n_48), .B (n_47), .Y (n_73));
  INVXL g2875(.A (n_46), .Y (n_119));
  INVXL g2877(.A (n_45), .Y (n_121));
  INVXL g2878(.A (n_44), .Y (n_116));
  XNOR2X1 g2881__6260(.A (n_43), .B (n_42), .Y (n_59));
  XNOR2X1 g2882__4319(.A (n_41), .B (n_40), .Y (n_106));
  XNOR2X1 g2880__8428(.A (n_39), .B (n_38), .Y (n_71));
  XNOR2X1 g2884__5526(.A (n_37), .B (n_36), .Y (n_55));
  XNOR2X1 g2885__6783(.A (n_15), .B (n_14), .Y (n_171));
  XNOR2X1 g2886__3680(.A (n_35), .B (n_34), .Y (n_63));
  XNOR2X1 g2892__1617(.A (n_33), .B (n_32), .Y (n_69));
  XNOR2X1 g2888__2802(.A (n_31), .B (n_30), .Y (n_102));
  XNOR2X1 g2889__1705(.A (n_29), .B (n_28), .Y (n_145));
  XNOR2X1 g2890__5122(.A (n_8), .B (n_7), .Y (n_61));
  XNOR2X1 g2891__8246(.A (n_27), .B (n_26), .Y (n_57));
  XNOR2X1 g2887__7098(.A (n_25), .B (n_24), .Y (n_51));
  XNOR2X1 g2893__6131(.A (n_10), .B (n_9), .Y (n_49));
  XNOR2X1 g2894__1881(.A (n_23), .B (n_22), .Y (n_104));
  XNOR2X1 g2895__5115(.A (n_21), .B (n_20), .Y (n_67));
  XNOR2X1 g2896__7482(.A (n_19), .B (n_18), .Y (n_65));
  XNOR2X1 g2897__4733(.A (n_17), .B (n_16), .Y (n_53));
  NOR2XL g2899__6161(.A (n_15), .B (n_14), .Y (n_44));
  OR2X1 g2902__9315(.A (n_11), .B (n_12), .Y (n_97));
  NAND2XL g2898__9945(.A (n_12), .B (n_11), .Y (n_13));
  NOR2XL g2901__2883(.A (n_10), .B (n_9), .Y (n_45));
  NOR2XL g2900__2346(.A (n_8), .B (n_7), .Y (n_46));
  INVXL g2940(.A (n_6), .Y (n_86));
  INVXL g2939(.A (n_5), .Y (n_92));
  INVXL g2904(.A (n_4), .Y (n_94));
  INVXL g2903(.A (n_3), .Y (n_88));
  INVXL g2905(.A (n_2), .Y (n_133));
  INVXL g2938(.A (n_1), .Y (n_100));
  AND2X2 g2906__1666(.A (b[0]), .B (a[0]), .Y (z[0]));
  NAND2XL g2936__7410(.A (b[1]), .B (a[1]), .Y (n_8));
  NAND2XL g2932__6417(.A (b[2]), .B (a[4]), .Y (n_66));
  NAND2XL g2967__5477(.A (b[6]), .B (a[5]), .Y (n_179));
  NAND2XL g2968__2398(.A (b[5]), .B (a[5]), .Y (n_70));
  NAND2XL g2953__5107(.A (b[4]), .B (a[5]), .Y (n_56));
  NAND2XL g2958__6260(.A (b[6]), .B (a[4]), .Y (n_5));
  NAND2XL g2952__4319(.A (b[3]), .B (a[2]), .Y (n_82));
  NAND2XL g2960__8428(.A (b[2]), .B (a[3]), .Y (n_74));
  NAND2XL g2949__5526(.A (b[2]), .B (a[1]), .Y (n_54));
  NAND2XL g2972__6783(.A (b[6]), .B (a[2]), .Y (n_25));
  NAND2XL g2941__3680(.A (b[0]), .B (a[1]), .Y (n_12));
  NAND2XL g2943__1617(.A (b[1]), .B (a[6]), .Y (n_35));
  NAND2XL g2930__2802(.A (b[0]), .B (a[3]), .Y (n_16));
  NAND2XL g2907__1705(.A (b[1]), .B (a[0]), .Y (n_11));
  NAND2XL g2919__5122(.A (b[0]), .B (a[5]), .Y (n_47));
  NAND2XL g2956__8246(.A (b[0]), .B (a[4]), .Y (n_9));
  NAND2XL g2920__7098(.A (b[7]), .B (a[4]), .Y (n_155));
  NAND2XL g2963__6131(.A (b[0]), .B (a[7]), .Y (n_34));
  NAND2XL g2935__1881(.A (b[2]), .B (a[0]), .Y (n_62));
  NAND2XL g2947__5115(.A (b[2]), .B (a[6]), .Y (n_43));
  NAND2XL g2908__7482(.A (b[4]), .B (a[7]), .Y (n_30));
  NAND2XL g2962__4733(.A (b[4]), .B (a[4]), .Y (n_6));
  NAND2XL g2945__6161(.A (b[0]), .B (a[2]), .Y (n_7));
  NAND2XL g2916__9315(.A (b[3]), .B (a[1]), .Y (n_27));
  NAND2XL g2926__9945(.A (b[6]), .B (a[0]), .Y (n_149));
  NAND2XL g2912__2883(.A (b[4]), .B (a[0]), .Y (n_58));
  NAND2XL g2970__2346(.A (b[6]), .B (a[7]), .Y (n_22));
  NAND2XL g2921__1666(.A (b[7]), .B (a[5]), .Y (n_21));
  NAND2XL g2942__7410(.A (b[7]), .B (a[3]), .Y (n_191));
  NAND2XL g2966__6417(.A (b[5]), .B (a[2]), .Y (n_39));
  NAND2XL g2951__5477(.A (b[3]), .B (a[3]), .Y (n_1));
  NAND2XL g2914__2398(.A (b[1]), .B (a[3]), .Y (n_10));
  NAND2XL g2944__5107(.A (b[7]), .B (a[6]), .Y (n_23));
  NAND2XL g2911__6260(.A (b[4]), .B (a[6]), .Y (n_33));
  NAND2XL g2971__4319(.A (b[3]), .B (a[7]), .Y (n_32));
  NAND2XL g2937__8428(.A (b[1]), .B (a[7]), .Y (n_42));
  NAND2XL g2969__5526(.A (b[6]), .B (a[3]), .Y (n_40));
  NAND2XL g2927__6783(.A (b[3]), .B (a[6]), .Y (n_37));
  NAND2XL g2924__3680(.A (b[5]), .B (a[0]), .Y (n_29));
  NAND2XL g2933__1617(.A (b[7]), .B (a[7]), .Y (n_2));
  NAND2XL g2954__2802(.A (b[3]), .B (a[5]), .Y (n_60));
  NAND2XL g2934__1705(.A (b[2]), .B (a[5]), .Y (n_64));
  NAND2XL g2922__5122(.A (b[5]), .B (a[7]), .Y (n_68));
  NAND2XL g2928__8246(.A (b[2]), .B (a[2]), .Y (n_26));
  NAND2XL g2964__7098(.A (b[1]), .B (a[5]), .Y (n_19));
  NAND2XL g2955__6131(.A (b[3]), .B (a[0]), .Y (n_84));
  NAND2XL g2917__1881(.A (b[5]), .B (a[4]), .Y (n_4));
  NAND2XL g2915__5115(.A (b[4]), .B (a[3]), .Y (n_38));
  NAND2XL g2931__7482(.A (b[1]), .B (a[4]), .Y (n_48));
  NAND2XL g2959__4733(.A (b[7]), .B (a[2]), .Y (n_41));
  NAND2XL g2950__6161(.A (b[2]), .B (a[7]), .Y (n_36));
  NAND2XL g2909__9315(.A (b[7]), .B (a[1]), .Y (n_52));
  NAND2XL g2910__9945(.A (b[3]), .B (a[4]), .Y (n_3));
  NAND2XL g2923__2883(.A (b[6]), .B (a[6]), .Y (n_20));
  NAND2XL g2913__2346(.A (b[7]), .B (a[0]), .Y (n_96));
  NAND2XL g2957__1666(.A (b[5]), .B (a[6]), .Y (n_31));
  NAND2XL g2961__7410(.A (b[6]), .B (a[1]), .Y (n_72));
  NAND2XL g2965__6417(.A (b[5]), .B (a[1]), .Y (n_15));
  NAND2XL g2925__5477(.A (b[1]), .B (a[2]), .Y (n_17));
  NAND2XL g2929__2398(.A (b[5]), .B (a[3]), .Y (n_24));
  NAND2XL g2918__5107(.A (b[4]), .B (a[2]), .Y (n_14));
  NAND2XL g2946__6260(.A (b[0]), .B (a[6]), .Y (n_18));
  NAND2XL g2948__4319(.A (b[4]), .B (a[1]), .Y (n_28));
endmodule

