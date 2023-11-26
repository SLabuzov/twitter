--liquibase formatted sql

--changeset SergeyLabuzov:create-public-generated_data
--comment create table public.generated_data
CREATE TABLE public.generated_data
(
    nickname   varchar(32)  NOT NULL,
    email      varchar(32)  NOT NULL,
    image_link varchar(128) NOT NULL,
    password   varchar(128) NOT NULL
);
--rollback drop table public.generated_data;

--changeset SergeyLabuzov:fill-public-generated_data-table
--comment fill public.generated_data table
INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('alejandro_mclaughlin','alejandro_mclaughlin@gmail.com','https://gravatar.com/avatar/ff55790e3ca9a63606b7f4f59d0c7a52','{bcrypt}$2a$10$AxfeSQHMZtLLCV/kVInAluqf8mVeqkFff0ppLKVg4oWdyi9fubChi'),
('eduardo_jaskolski','eduardo_jaskolski71@yahoo.com','https://gravatar.com/avatar/d2c3b6067cf9ca4fb319f13686ff2abd','{bcrypt}$2a$10$xLtD/80o7R2Cr4H0q5mXRu7MObpNv3ZxZUm1F7k46rE53F0pjWmhi'),
('rochelle_volkman','rochelle_volkman26@yahoo.com','https://gravatar.com/avatar/a556e36f2bcfb42bb8f3684801e8bf43','{bcrypt}$2a$10$lMot7FxH/GkfddQI/qzuTuPvSt5BtoUpv.CQKpdDYo1zIWXgT3PGC'),
('sonya_abernathy','sonya_abernathy37@gmail.com','https://gravatar.com/avatar/7bda0ed9b8f483296a9d1e111728163c','{bcrypt}$2a$10$5M5d.mWLPq264cwjFpbYiuPOML2tqidutrlo8sqDG067kVYg8/CoK'),
('alicia_krajcik','alicia_krajcik@hotmail.com','https://gravatar.com/avatar/6977224bfeae30692eb13e7f52fee7c6','{bcrypt}$2a$10$gfkV5h0HwRyKHfg.04jiiOftCwnC045slkcEgHyASZzocJAXa3/ei'),
('matthew_breitenberg','matthew.breitenberg@yahoo.com','https://gravatar.com/avatar/444ba8ee7a26800d0a1fc97aca34da61','{bcrypt}$2a$10$2SCwzBgUpc/R7LkTskHL0OzIEa2U5KNyheLwu5nD7VacK31G0kloy'),
('gregg_fadel','gregg.fadel@hotmail.com','https://gravatar.com/avatar/bb9050cc345252235823a67fa1b6e1ca','{bcrypt}$2a$10$CGo3mYWEG3XQYjI6DbwrhuSsEDbw5vpdk86srD9PH3N69DCDmXfxy'),
('chester_swift','chester.swift@yahoo.com','https://gravatar.com/avatar/f443249aa96f04803b7f686c6f9fcc41','{bcrypt}$2a$10$RSQm/QlCjQ4pzNcwtdMqp.gpRrzVJXAQKa9p05OuKQdM/jOgkRsli'),
('nathan_gusikowski','nathan.gusikowski@hotmail.com','https://gravatar.com/avatar/ab47363a16123dbfd234eba05039a350','{bcrypt}$2a$10$K/wohV8RwCD.BxTU08plFOQ9tzMTIlDrM/X5MRApxc9UP9HYPSTuW'),
('cedric_hintz','cedric.hintz@hotmail.com','https://gravatar.com/avatar/e79e6363a6fd36a6c905f89242814f80','{bcrypt}$2a$10$6f42d0WD4dTOMIC0CCCR2.XYgP2aX21tplIOxyZ5tlslMs6w0KJR6');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('edward_frami','edward_frami@gmail.com','https://gravatar.com/avatar/837308e0a17f4f8340effb119a4b5888','{bcrypt}$2a$10$Qicgj9E4muiaAkQX7XSOt.fkZhuCgBsLRuk4oODJNEsMjavuL/tb6'),
('woodrow_balistreri','woodrow_balistreri@gmail.com','https://gravatar.com/avatar/457a00afa2ad0163db29fdb3437b111c','{bcrypt}$2a$10$yZB.KccRsoOZlPWQs2sMuO6Sirs7ZiudLlGyD4CPfr33l4OHp0lSi'),
('leticia_hills','leticia.hills@yahoo.com','https://gravatar.com/avatar/d4bdf1a0ac0d52b3a34e366895bbd961','{bcrypt}$2a$10$g21jiYR.yx3D3EqA6n8TDu0SDIJV39.BffAP6jmIp5pY4rzk6k3Pq'),
('constance_gleichner','constance_gleichner@gmail.com','https://gravatar.com/avatar/65a8ac1f5f7e99cf8ab9c5264985d64e','{bcrypt}$2a$10$G5VP2pguYHDFn7RHsZ5lZu9Q7ZHasJPF4W1uuaNW5J2Sr2sJFDDRa'),
('jimmy_schumm','jimmy.schumm@gmail.com','https://gravatar.com/avatar/934189cb858f9650416291eb6c8d3106','{bcrypt}$2a$10$v0AyxIbafIaFiDcneGvxd.Mi6tVxUW9C5SV6AjsyfW5HDNFtA73oG'),
('roosevelt_smitham','roosevelt.smitham@hotmail.com','https://gravatar.com/avatar/b8377deb442b56b2dfc2e9e4cdc7f025','{bcrypt}$2a$10$.9RLr4lQa58Ihl74jR3cWuOWNRHdVEYGkE1pgAAVKHPHco8SZIX0m'),
('woodrow_douglas','woodrow.douglas@gmail.com','https://gravatar.com/avatar/9f0ac98591746c11b005aadb94bf98d3','{bcrypt}$2a$10$7pPsJuHmlmYdgddO632J.u65lmSwAWgxH23m0jF.6Jvc.p8tgOMpm'),
('claire_walsh','claire_walsh@hotmail.com','https://gravatar.com/avatar/131b80aaeeb1a75f222958c6823069b0','{bcrypt}$2a$10$71HKUcXENPkKQMbzTlaH5OsrFnT07R1tRQPGahm/wmM9HCB/YMesO'),
('stephen_beer','stephen_beer@gmail.com','https://gravatar.com/avatar/76405c247d047ddbf258c14e04326df5','{bcrypt}$2a$10$km7ccr0fM5up27gI1sEX6Of4W3i.iRX4Ze4gcHrX/65KI2uzBBed.'),
('paulette_nitzsche','paulette.nitzsche@gmail.com','https://gravatar.com/avatar/ca683fae28c4eb91a64f0ef3745821ea','{bcrypt}$2a$10$erfeaCAogjcEEFxahbwmQObRLVhn9Ily14Dj4vE5fHG4SZ5R4QQsC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('kendra_schumm','kendra6@hotmail.com','https://gravatar.com/avatar/b6756e811bd0f8ed4233262cd5f2d952','{bcrypt}$2a$10$wd3519R1ON5ELjJ.HeV8zOWYVG.cjOOwFAssqNluhBzYi8HDSEwT.'),
('lloyd_mohr','lloyd.mohr22@gmail.com','https://gravatar.com/avatar/4bcb8a389ee38844228b062ce4639dfa','{bcrypt}$2a$10$5gOPcYAhbdq.B.IkufBEGeH.x35uXUQAosiNokffXhOjaYE2ycdkG'),
('douglas_yost','douglas_yost84@yahoo.com','https://gravatar.com/avatar/0e8ed5a396f27b4202f376e7d42aca1a','{bcrypt}$2a$10$15b5dzBHG.ofywWCKuQBo.hthXUglSAF0.gNtNlJVHMiAsxjGtCQG'),
('clint_hahn','clint_hahn69@yahoo.com','https://gravatar.com/avatar/f3941868bc906f399021e09924a1c104','{bcrypt}$2a$10$6fFHtMoJD7AN5NAa4/m4JunjuEqHD7k9gH8vtioBh9OOzVFSWmC22'),
('silvia_kuphal','silvia63@yahoo.com','https://gravatar.com/avatar/77436bfcd36113f8007a7eea120ae651','{bcrypt}$2a$10$vosfvLTLSIZifCuc3qp8yuCZeJCPtSYxdcUkPpFgIlY4MxTBpuBra'),
('ismael_stark','ismael_stark66@yahoo.com','https://gravatar.com/avatar/b7b067a637436584c3427de3c4978e01','{bcrypt}$2a$10$VM585z.JQ5YtYcZUWEp5Oea.vPNPSyznOmTXGLMAB5OuSiNM7BTGS'),
('ramon_will','ramon.will@yahoo.com','https://gravatar.com/avatar/e2b331526b8245a6729a4a08fe191b8a','{bcrypt}$2a$10$l0o0Lwbrfl3bpK1y0cHVUe1xCvmNzWr8cob1oBBN5hZe/EKIaviJW'),
('jeanette_herman','jeanette89@yahoo.com','https://gravatar.com/avatar/32dcb65213722c91cf1dc0ec70ce4926','{bcrypt}$2a$10$x1ilut4MqYECgzLp6CoEXe7Bt.sFEvXRLf0vtiMvcSbUaLH/ZJwZW'),
('frank_quitzon','frank.quitzon86@yahoo.com','https://gravatar.com/avatar/624811097020ac278fcf7eb2134b6295','{bcrypt}$2a$10$8.stIH3N6APIgaxNXhlYDONeFOZLNxuMpdDAjO22SD3gJkNKrzzOy'),
('guadalupe_kozey','guadalupe39@gmail.com','https://gravatar.com/avatar/6141b9443240122b10b4e03a51617c89','{bcrypt}$2a$10$.06O1WY89bGlerg4evbinu1batZ9Djn9L.GxVbB/6bsr0/x34Rl9C');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('shirley_welch-beier','shirley_welch-beier@yahoo.com','https://gravatar.com/avatar/166b7e73e05bc150d943e0da853fa12d','{bcrypt}$2a$10$sjRHln445ie2y.UKL7LNYe3Ti/3fmhsNz.EDd8TvZoDKWDm4uLrLy'),
('angel_breitenberg','angel_breitenberg@yahoo.com','https://gravatar.com/avatar/21362d22da4bebb7aeadb18989dc8eef','{bcrypt}$2a$10$gNyGg6gJJGtM7d3ULpVHheyb9YjIkd3MmBvPNeRCr4QFrqnJI9F86'),
('geoffrey_boyle','geoffrey_boyle@yahoo.com','https://gravatar.com/avatar/b510eff97321df049d6bd4602bb0368b','{bcrypt}$2a$10$Q1BS4LWg2SWMNFD1jmSr6eIT/jYxBL0BCeTRJOLvCw31DtM/Tam02'),
('ron_gutmann','ron75@gmail.com','https://gravatar.com/avatar/ba3606b6135c01efd922d88063fbe1b8','{bcrypt}$2a$10$ivG7jj9n8Mt8XefAfG7Igu5AnROhrVCFOF1P7/S/bq/7jALFfJ/Qa'),
('hugo_bartell','hugo76@hotmail.com','https://gravatar.com/avatar/e36ad8325c4e9cb09633d4985de83c9a','{bcrypt}$2a$10$KVWPWK7Wj9ta70HwyXtJkOyVSk.L/NZgJzznBu2GN9Xahk/Ltswju'),
('laurence_kutch','laurence11@yahoo.com','https://gravatar.com/avatar/42b25ec630b66345169327913e633fde','{bcrypt}$2a$10$VfgeOurfxo.WPvVwGK/5vunsC8rqeFlrF0zEBsFkDZZp8hkuBpRxO'),
('howard_farrell','howard43@yahoo.com','https://gravatar.com/avatar/2c31107bf1fb504d8820871340336b48','{bcrypt}$2a$10$BiguXxbUyfbaeQ2RmJcZLe67ZpHDV0TYixgM6.1MuM.qNkT9LfJF6'),
('joey_gusikowski','joey_gusikowski57@gmail.com','https://gravatar.com/avatar/e7201adaa20325186fde7375c3181ff0','{bcrypt}$2a$10$gMWo4CrXH9v/RSzXLro27O631khXCPC9LtILmyTN6uEPo9sf1fG1S'),
('lora_d''amore','lora95@hotmail.com','https://gravatar.com/avatar/2c10bb53124c578fead402ccfd023c4f','{bcrypt}$2a$10$U6BLyvXjVKSlqA7dTBOYGux3DV14dOxgtToJhZ0m0oiVYpbm8/dJ2'),
('kerry_bechtelar','kerry.bechtelar@hotmail.com','https://gravatar.com/avatar/9ade4ccc0d9a0c6cf2e98492397a3ae2','{bcrypt}$2a$10$z/RY.BIZAz2i0MNiMpAHHu.uVXA7qqr/UkzB.pTfK8vAo/SBgmXPK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('robin_nicolas-mcclure','robin9@yahoo.com','https://gravatar.com/avatar/7c67f2873d0224561f925f65b0a9db2b','{bcrypt}$2a$10$OTw/K4Iy5avWl.pLIrr3JudEUdmCEj7F1TutJgTe2Nnd4w9zUOC9q'),
('christy_koepp','christy_koepp@gmail.com','https://gravatar.com/avatar/ae6ac27757ef9c51fa26374481d2d11b','{bcrypt}$2a$10$Kwz.RCaGNcDjWSJs8OGmFOR8Kx/0GQu7XO8b0A2Hs6LIbE9huTA9C'),
('tommy_parker','tommy.parker@gmail.com','https://gravatar.com/avatar/df9bb98eeb2982d9542818c59ccf32b4','{bcrypt}$2a$10$IPuAVB7byvO1Ces3o9i4qOpDuPGBtMJB83lvj3Pxo9WBSheW4Oa1K'),
('laurie_o''kon','laurie.okon77@gmail.com','https://gravatar.com/avatar/9d8144a31b25afa482aa8ee8b3d9d9fd','{bcrypt}$2a$10$g9I.dgvBTvwINWG7jwgh7eOiqo4JXPCX.EK67ej11v9F8ynHRA7wm'),
('jasmine_satterfield','jasmine_satterfield@yahoo.com','https://gravatar.com/avatar/8727293cb2ee13afd223e218b44c0a3f','{bcrypt}$2a$10$jY5NeCYpLwEyVd03j.M8feXwxNR1RJwZfJV6/ybAEJM8zn8.IgG7i'),
('luis_tremblay','luis.tremblay@yahoo.com','https://gravatar.com/avatar/658709322bf2cda6cc6f17a254b13799','{bcrypt}$2a$10$7Veuzv5N7z4NrNf/59OaNO5HUjdqIimGzu/yzmXli41hSwRQVvUv.'),
('dominic_russel','dominic.russel@yahoo.com','https://gravatar.com/avatar/45227acc149a9a8814805221c817b41a','{bcrypt}$2a$10$SOPGOo9tVS/CZCILYfBV9esfytVFGzBSyO.zuK9WqbBk6wc7//g5K'),
('minnie_legros','minnie_legros41@hotmail.com','https://gravatar.com/avatar/b19293449aadcac329b918b23e05a416','{bcrypt}$2a$10$N0hesOrbHTy3zCxpnYtvxOeNAhX0RtP3yP/xjJ/CNFooJIu57ixrC'),
('margaret_bartell','margaret.bartell@gmail.com','https://gravatar.com/avatar/b6b65d6bb26b632ab1ba97cc53cca05c','{bcrypt}$2a$10$fF929wqq6qxKESLrEoku3uqRdXvStR2LSTqh9XaGxz9LiuWBpjlfq'),
('marie_fritsch','marie_fritsch@yahoo.com','https://gravatar.com/avatar/6e4d7ee2cb6a1a87602db6c828142501','{bcrypt}$2a$10$8gzL./cytj4D82UYFRj6IuAf6GUKD/RowBBVqW/aSbvyoxo4vBKtG');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('andres_feil','andres.feil10@hotmail.com','https://gravatar.com/avatar/e4a678c1b56de343c49f7d1b0a4c74cf','{bcrypt}$2a$10$vIJwnG9p1KUSTs6aBXVTUOvPu5Xbwkjy9uKdH5umxU8lGQ/mi7cXS'),
('dawn_hansen','dawn.hansen@yahoo.com','https://gravatar.com/avatar/117bde1ac95ee27c2ada36877ed01cd2','{bcrypt}$2a$10$xwPZZKkNDXC5ds06ceMW2eeiyX0SHjImcaBI8NW3FIIfx.SC90Edi'),
('essie_moore','essie_moore@hotmail.com','https://gravatar.com/avatar/b15108114940aa1915b9602ba06510a3','{bcrypt}$2a$10$1dqcxgT1Yp7E0kmOm010ruEVNW9KdaSMOSivZvt3pmxfvnuIjWUHq'),
('mildred_jaskolski','mildred_jaskolski@yahoo.com','https://gravatar.com/avatar/15192c0fa7db329d51544af673f7bdc9','{bcrypt}$2a$10$oPR5Hs3zASVqvqNQ.qnwJOIVE4Fe0XGsXYmZksk8nwONYbBX/.ee6'),
('kristie_haag','kristie_haag31@yahoo.com','https://gravatar.com/avatar/7f37efdfc76fdc1cc7f1d0815edfa7f9','{bcrypt}$2a$10$1NBKOFpDSCOppRx6mxzrYuk86okfSPThq9wnUqmCDX843rES3UvNO'),
('tony_crona','tony17@yahoo.com','https://gravatar.com/avatar/bf78f7584034697d0e7d5016a5b934c1','{bcrypt}$2a$10$ZWVfRhm1ft3ayCewkuV/HO67FUWCHqUnec.DZPQQ3BXggmw9i20Em'),
('cassandra_mohr','cassandra42@yahoo.com','https://gravatar.com/avatar/26e2938a3707d3f745b19b6249a677aa','{bcrypt}$2a$10$fxaY52UMesurVt7QddHNUOXAExnUmCGWQEt3x0.y7GC9eII3i/ChG'),
('dexter_cronin','dexter49@hotmail.com','https://gravatar.com/avatar/3ee51dd2b99d99c04881f72e96a87e09','{bcrypt}$2a$10$14GQ2DCrpn95QQJ5/4F4KeyqUbA0DHobmGn6U/6QOkUxf5TppaADG'),
('ramon_botsford','ramon_botsford@gmail.com','https://gravatar.com/avatar/785cf288eb741d5d2ccb3173a0037943','{bcrypt}$2a$10$/85pwu.wFkKxj.tnrI0f4urMz10.dI/HeacJ6tR.RZgUuhwBri/tm'),
('bruce_willms','bruce.willms54@yahoo.com','https://gravatar.com/avatar/4f026ff81c9d72b1cb95eaec2d7379a0','{bcrypt}$2a$10$yi0T4X1LzkUPUSi1ScaUBeHvjI94IvIk1mYLMheLNmZfMWuoPDmli');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('nichole_schamberger','nichole.schamberger@yahoo.com','https://gravatar.com/avatar/2a6d53db46086cea717ed35ece3923cd','{bcrypt}$2a$10$e62ShDjniBBqpyDwmQvb9Ov/STcuY278a9ZnGgB4NZJuyn9R168pC'),
('theodore_altenwerth','theodore_altenwerth@yahoo.com','https://gravatar.com/avatar/3330f9ca7e13a90ea960ce6a1476f4c3','{bcrypt}$2a$10$Koo3rBotbMQpj/LNYBbX3.1hMc0vuADaOXYiGYhpBDlrQmDugwxZe'),
('heather_fisher','heather26@yahoo.com','https://gravatar.com/avatar/6f38fa33905f653d549f24628b3a2b65','{bcrypt}$2a$10$aDh3YYjsGBvGztCUzX1Ez.VGIXmCG06x4Tt.kVdo/05DDwRm.6T/S'),
('devin_stokes','devin_stokes@gmail.com','https://gravatar.com/avatar/f278492393b84842abfbed87a322f403','{bcrypt}$2a$10$RJzMCGJDxOjJH3IqfSc8T.kqJRVvDKhYkX.kww7pZDmVEcva92E8K'),
('marjorie_jaskolski','marjorie.jaskolski56@yahoo.com','https://gravatar.com/avatar/9b07ce89116e65dbed809e608b233a43','{bcrypt}$2a$10$5jLOuYetjQGvWlTQU7dsiedX4qlHUDTtKD4bF/KlEtWJYLq5IJV7G'),
('eva_rempel','eva_rempel@gmail.com','https://gravatar.com/avatar/c250950ea13aada0c5c144b30c418225','{bcrypt}$2a$10$bGUg3vbH6LRKAHBqO8ZD2uMpOyzOesrPRIaLLVYrCfLXbQ9/RalOS'),
('stuart_crona','stuart60@hotmail.com','https://gravatar.com/avatar/0a7bb5d4cf6ab427fd69d248feee427e','{bcrypt}$2a$10$DLgVGX0rSF/A9d/TF6LgpuMyQOuAeSXtZ03mvBCQJUmY.8ie6Mx6u'),
('jared_ortiz','jared_ortiz@yahoo.com','https://gravatar.com/avatar/7fccd34cc1be25b365b09921e1b7fafb','{bcrypt}$2a$10$Bfb1cMQ5JnxHL81aaamfsewkYy.cfiw.9/s.0aa3LokJNfP4dncn2'),
('geraldine_hackett','geraldine0@yahoo.com','https://gravatar.com/avatar/686cbc38b21e009020d3cda005fce387','{bcrypt}$2a$10$M.8i1XCt.zYQtrC03Ki0m.V.u0mfuwlB0Qlpd/qvsJ6pCsNkRSlzq'),
('dennis_kling','dennis23@gmail.com','https://gravatar.com/avatar/f83980a75a968bddc7225cf867ae80b9','{bcrypt}$2a$10$XW1lFYxCNyqJ3UKgoWiWjO/rr8Khp7lDC9Tp/q3/Mv3hky8oB0IW6');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('rita_skiles','rita68@gmail.com','https://gravatar.com/avatar/b78cf4bffe631ee31b96d75eb820c14a','{bcrypt}$2a$10$7WOQHjJo1OMFpCXzeFvr9OLYOjZTeDr1ooRHUaaRmjrf6ZlYcQz0K'),
('tony_feil-turcotte','tony46@yahoo.com','https://gravatar.com/avatar/dc126ae67e9b214e611b874312575c01','{bcrypt}$2a$10$em5Nb6PVezC5LOs8zCEQL.ET43CJUhC9vlzcSsX4Fo9ioZ4IjXXE.'),
('lorraine_monahan','lorraine95@hotmail.com','https://gravatar.com/avatar/0e512446308d9f30b6e6dd87d74953df','{bcrypt}$2a$10$ngRSX4YdS1H8vZJaywjCeOULoTK0W8fFJRM7uqpIJzPeCPI2l9RP6'),
('jeremy_wunsch','jeremy_wunsch65@yahoo.com','https://gravatar.com/avatar/2ba8687812e7c6181239d31fbf96ff58','{bcrypt}$2a$10$SI.lXIq66EmhlV8Vm.nl0.H14BmYMPsq.tmJNw4SDmoxZ6ifnZwrq'),
('hugo_gutkowski','hugo15@gmail.com','https://gravatar.com/avatar/43d5ee41bceb3250b94a22e7718ab7f0','{bcrypt}$2a$10$gj.Wj2vkQnvvRKp/TtL9B.SRzEmG3XFOYYTvvOaDq.1Ynhcb0mnAW'),
('orville_stiedemann','orville60@yahoo.com','https://gravatar.com/avatar/0b6331fd28a47d886ab9e6cf2dfa17d4','{bcrypt}$2a$10$r6UcjnOhathOvV7nThFcKOaAVRex/zHlcgX4Zh30fQy6Zj0UuQgrC'),
('kara_ritchie','kara.ritchie48@hotmail.com','https://gravatar.com/avatar/384fc4cd2d45fe0909afc12f4bae530f','{bcrypt}$2a$10$Tuj2rBtquw2bD9ihnyIYnOsO2XaM5mSdlELAexvv7M6dXRsBfj7Ru'),
('felicia_rippin','felicia23@hotmail.com','https://gravatar.com/avatar/b1131cfd27e220c5305c2802f507efd1','{bcrypt}$2a$10$.Rev3Hly2n4EVnBXisZEzehg2n.xy8kn2PK0nYvlRiu9mCVIMGB86'),
('joan_halvorson','joan_halvorson79@gmail.com','https://gravatar.com/avatar/15f856e1a5ac1512fd8476ba72ca7342','{bcrypt}$2a$10$zn2KuYTL1v7SrQZs/OX5tu7S7nZfm6yf7k5vJ/MsnpFnJzmxZmK3S'),
('elias_adams','elias97@hotmail.com','https://gravatar.com/avatar/a2d2acb1e3ad2d13d8375ea39198c258','{bcrypt}$2a$10$EyxsvSfh8/yat3Wm7AWkB.5Svl1C.ytexgBAMo8NlxdpA0hUuh166');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('willis_osinski','willis_osinski54@yahoo.com','https://gravatar.com/avatar/dc7c1ced01dd8c514a774805b91be8be','{bcrypt}$2a$10$i3Gu72Sc8d2GnQZLP9DN2uZsRkQkvANH9XWNkc7y3K67x2ka.Udhm'),
('paul_bruen','paul_bruen6@gmail.com','https://gravatar.com/avatar/5d957c4eca239c60dba02a23adec4de6','{bcrypt}$2a$10$7T0YVWesn5NDCDKc50ImwefDe2C3hAMrCAWkkdDepTZLqQgA/coQe'),
('arturo_denesik','arturo.denesik@yahoo.com','https://gravatar.com/avatar/6deb0ae2faf2b3dcc3266a09dba13bfd','{bcrypt}$2a$10$8/493kSzNrIbJNHb58mxMONG3awrjZx1vsS5metD0zw4G.HF/w27m'),
('gayle_kling','gayle56@yahoo.com','https://gravatar.com/avatar/ed42df2ede7f093f1417eb34402c4775','{bcrypt}$2a$10$38zT.tl1ZND75SoAreEIZeKK1i9RHLeBXMrBOk0yX4pGMSePiWeJe'),
('virgil_moen','virgil.moen@yahoo.com','https://gravatar.com/avatar/bb8ed0c1df72df94c84b855df08175dc','{bcrypt}$2a$10$Q66h4OzSJm4NfQ0v/.Gk8eBU3/uSoRwge02mqpaKI1hyI6MgaIZYm'),
('christian_nicolas','christian96@gmail.com','https://gravatar.com/avatar/449057b08f0109ac020ef59b844c1edc','{bcrypt}$2a$10$U7KoI/4YsS/b9yQ30vWXa.k5.RJILKtjDgzj7L1OseB9kNQRHo.6a'),
('clyde_walker-boyle','clyde.walker-boyle@gmail.com','https://gravatar.com/avatar/bb1ddaa4921518fc1a6fe1259e4429e1','{bcrypt}$2a$10$Vspq6eBWtdMTt1mHotxsWuD6XSSBs.D9Ms84X1TpOm6PrXhwvjFSu'),
('joann_balistreri','joann_balistreri@gmail.com','https://gravatar.com/avatar/76c247aa7c73cb7d340a53f4d41ade44','{bcrypt}$2a$10$yiM4WbOJXhNkndDSkKr7nO1bh74xfMFYlPxYdJc5Vgw9CLMVBxHAC'),
('gretchen_kunze','gretchen11@yahoo.com','https://gravatar.com/avatar/ffa0a27ed7acf963e4fea36f9d016b71','{bcrypt}$2a$10$8xOnGkhSHN02nltr5.7gGe5dhP6nkp7KgUYgggQiJiQWbW0aChoVS'),
('bertha_hagenes','bertha61@yahoo.com','https://gravatar.com/avatar/8613a0acec1ebbda080c2b0c3ca9174e','{bcrypt}$2a$10$1y5WIu6bZorPNSt2Uh.g4uc6rI4k8q2Fn4vEOtljxYSMum8e0PxJS');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('felicia_cormier','felicia_cormier25@gmail.com','https://gravatar.com/avatar/5a0e2e6c68b74a803af7a23555b94a53','{bcrypt}$2a$10$frzn97xTmnhnwD8JiWSaTeXPOagommkMVS86IscDt9PioV1xBw44K'),
('ida_o''keefe','ida91@hotmail.com','https://gravatar.com/avatar/e394a848378cea8cd0063abaa3a9d969','{bcrypt}$2a$10$whu9wdiWKU4KBEmJ9G8UKeKPoZ0bvIRj3G9WcPqh3ccLP1UwFq1GO'),
('anita_kuhlman','anita.kuhlman50@gmail.com','https://gravatar.com/avatar/d91e3533363e09f10e71d8c66ae6dcce','{bcrypt}$2a$10$QeiV2VUA41uDPG9Z/5WpLepX0XMD2zEkfwO1S.PCDG6wJJjHUKLI2'),
('roger_beatty','roger65@yahoo.com','https://gravatar.com/avatar/c01ae3b122704bb9ac6aa8eb69775296','{bcrypt}$2a$10$pBZJUbnfR69sKFssZsXMNOMWVg4aPuUv27oACwOrH0jhVrikE0FVG'),
('lowell_kunde','lowell_kunde@gmail.com','https://gravatar.com/avatar/c9ff2194e00154a29bf9570447c6b0a3','{bcrypt}$2a$10$1xTOsVS0Qkz0OyivQRdccO.VEyed.ZRmPUK.sTwibkpXiMGWYz0iO'),
('leon_fisher','leon94@gmail.com','https://gravatar.com/avatar/2da6eb525eefc09120e7188b85fee9ec','{bcrypt}$2a$10$WCQ7dLvPOdh4t2yutvm.Ae8prqYlT3AgIYqewBH749E5GpOR/YVn.'),
('bryan_hyatt-cronin','bryan.hyatt-cronin@yahoo.com','https://gravatar.com/avatar/fbda24c9a8544a78c78b7410e5c370fa','{bcrypt}$2a$10$OOe51Q9RDw3LJM7leMjhhOnMBL.r2y2lIXJO71y16S7LJRsPtlcz6'),
('tabitha_bahringer','tabitha_bahringer@hotmail.com','https://gravatar.com/avatar/f44ecbfda3e72450ca76c1ac66927415','{bcrypt}$2a$10$ZWkMWNXtWj4aILRSyca/HuStHQIY1m3ET4SQjIL7N3nUKwhfa2Ts6'),
('nicole_sauer','nicole.sauer@hotmail.com','https://gravatar.com/avatar/50a0c7a42e7a40dbc538bb51ac708106','{bcrypt}$2a$10$snUa2q6DtAwFLFPaaXBHHufN2hqoQcW2I1/ihy/qyvcp0TP5mV7Bi'),
('bridget_miller','bridget_miller@hotmail.com','https://gravatar.com/avatar/204088563316622c451843881c5154e4','{bcrypt}$2a$10$DoJd/nRL/6NSkgH6BhvCRuat/BPFXO6X06Adn.qKMA0ytsQOSrba6');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('dawn_marks','dawn.marks33@yahoo.com','https://gravatar.com/avatar/962b0ef425c1c696ff362196b21308a0','{bcrypt}$2a$10$XIvDY7FXvdQpjEl/wVcRyuoKk1LxbpXZ7b4JETiPXjt0djS4jKk5G'),
('jim_hammes','jim_hammes@yahoo.com','https://gravatar.com/avatar/4089d067feac4da98e2f7450afd56ab2','{bcrypt}$2a$10$DvpergsgnNTwWBoG8wOgOO3cu2AAUuROF7MSlERVzgyokWA5AOjf.'),
('ida_hayes','ida_hayes@yahoo.com','https://gravatar.com/avatar/a5468ac80f270e5775973f5c890ba19a','{bcrypt}$2a$10$g5tO30BpBaX4W2Ji0OlbHOp7fgp3fATglNuKd690Qyg5l7VuOZZbK'),
('josh_blick','josh.blick@gmail.com','https://gravatar.com/avatar/de9cf1770c3749892c7a589c5bf92f6d','{bcrypt}$2a$10$.Qsv55.cjCaPNnXveq8H2Ol.LLPsj6NA5BFE7ePcludARRjydxPDO'),
('joel_hills','joel.hills@hotmail.com','https://gravatar.com/avatar/950e472c7120bfc2b0f175888b805f55','{bcrypt}$2a$10$DqxTcMoQoqK4XDuEMERF/ey1.kJDG.SSCBhjC/Ske9D8fdGPiLzsK'),
('theodore_stracke','theodore99@hotmail.com','https://gravatar.com/avatar/cca230e9874c4e49cc46ff98ed731ed5','{bcrypt}$2a$10$GmAmvbnQ5Xrwg61rIKPYlu.cdZ073eh7tlU6Pa/JJwj3xJjnn6ESu'),
('kyle_lynch','kyle_lynch93@yahoo.com','https://gravatar.com/avatar/fa165100099e77e744dc40966b5247e8','{bcrypt}$2a$10$BGpJjo5Dfyrmiz0thVHN2udvsannqew8oEfU5DA2vi9QsUYpIaPJC'),
('vivian_heller','vivian_heller@hotmail.com','https://gravatar.com/avatar/a0904542a8188868940c0276cad04bc8','{bcrypt}$2a$10$.Uy8eEPhEWKLDzG0xNHQjewKeRS5kkC.0wudQHXxT8Zp/CIy0ocUC'),
('lynda_brown','lynda_brown64@gmail.com','https://gravatar.com/avatar/ae59de4ced11caa1412ff0c9d4054d01','{bcrypt}$2a$10$cmUfdKlXIZ691bdlNnTTcuctdvgFlwMBbVp.3JFXHAKYloGBEi0g6'),
('preston_buckridge','preston.buckridge32@gmail.com','https://gravatar.com/avatar/cfd48f4da48449d79b9a3c6ccb16518b','{bcrypt}$2a$10$Lk61Za1gJDJfMgQlW67tquiAcSUJ.xY2rvOtZM6R0ddF5v7winTDW');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('erin_schmidt','erin97@yahoo.com','https://gravatar.com/avatar/489264cf2498bada4d6193064d024f31','{bcrypt}$2a$10$MYA.DpQjqLH62/vpEGdI5edZq05TphQ4UDn0bdSdrK207Uazxz9Im'),
('juan_fritsch','juan81@gmail.com','https://gravatar.com/avatar/0ae7cdd0b989e973226d6e29488db5c0','{bcrypt}$2a$10$QipvcDmKbxB7iOy8dVGFp.M1k5SPUA7uPXXfkcqJoc/rfL0htk7VC'),
('hubert_hand','hubert.hand67@yahoo.com','https://gravatar.com/avatar/a380b872ddee36ded6bf6cddf9df7e82','{bcrypt}$2a$10$cswh/FulilLw1gz31FC8BeowXN.8btLLOaKhf6WGkTz9MCcG9f4wC'),
('vickie_will','vickie.will@hotmail.com','https://gravatar.com/avatar/bcd37460e3e5edf8d9e93d4faadd15f1','{bcrypt}$2a$10$Ioe9fPEYj/0KOVbzENdsnO9j3sug/fWT9z20nOa4izGDNHrovFKsi'),
('sylvester_kovacek','sylvester_kovacek@hotmail.com','https://gravatar.com/avatar/b1db16eb9f9854fcaec1827a44d49441','{bcrypt}$2a$10$i50f2ZTRBF/3vAk9MuGEeetWyjtjAEEnuP.iInETBo7SIFrAMYcnK'),
('nathan_strosin','nathan79@hotmail.com','https://gravatar.com/avatar/baa7886f0c3ec3cde478cb6d5e3d3686','{bcrypt}$2a$10$d5apwM44NcV7sOpm7c8Gu.FG1UrNnJeG814dcs56xq.soGDXrbzue'),
('pablo_harber','pablo_harber@hotmail.com','https://gravatar.com/avatar/beaa606036ad9d6b5fe8147476290c37','{bcrypt}$2a$10$NixgGWCl42bWwAU32xMKM.wNDeBw124YMF.FlM3tsFlgXQ6t0DmMu'),
('silvia_little','silvia93@gmail.com','https://gravatar.com/avatar/ad0a269cf08dce53d7decacc048f8534','{bcrypt}$2a$10$T53gsh1zL12qyNVCqQuBMeBP44ezFIInrAi4uTeoZ8qBCxVZOIT8u'),
('brandon_haley','brandon88@hotmail.com','https://gravatar.com/avatar/44cf77ba943515127572f9a7ffd40c7a','{bcrypt}$2a$10$ehzH7bclugQIbq/YF.UWaOjhWfOe.d44yWRekJ6XQHXIdEqF.tsde'),
('maxine_legros','maxine91@hotmail.com','https://gravatar.com/avatar/5d8211dd389ddae9931149699dea0c20','{bcrypt}$2a$10$iMSn1CVWHNnxDoFIqD6q9O5DQSTVpssslsycVC2H/enhqsrXdpYtu');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('brandy_dickens','brandy.dickens96@yahoo.com','https://gravatar.com/avatar/1a61467c4eb9a99f0be0e48e7c38b19b','{bcrypt}$2a$10$SSwaa3u8fw9HZE6bfkHwee4JxSTAoZcJDtSsp9DLLRYe9H4ElXCd2'),
('willie_wiza','willie_wiza97@gmail.com','https://gravatar.com/avatar/5ace993c5104856a8ea5ab3f2c73c77a','{bcrypt}$2a$10$zNgwJ3AjdpEZo/yPOyhYE..bCmRKjoR7gQeNBPc.EVTu5J4hStIfu'),
('keith_hilpert','keith64@yahoo.com','https://gravatar.com/avatar/ebd27c1cf895e1eb9f5f1af54ca9c030','{bcrypt}$2a$10$KFD8m5d3N0OAjOkrmEbKte1F5WAHURzXYRr7lumyMdADmGOL5nO6i'),
('cory_ziemann','cory_ziemann@yahoo.com','https://gravatar.com/avatar/ab6b664b40c0a9fa5cddfdb981e08432','{bcrypt}$2a$10$UFGppsEKdpzbh1bg/EsJguKo02llAs.a.v4sWLV/pxT/EfoReRJ.K'),
('ollie_gislason','ollie.gislason@gmail.com','https://gravatar.com/avatar/224a6bd68811a3f7232d46a167c35155','{bcrypt}$2a$10$l3YZswweTsmbU.34KSlZke1qZnqBYG.vC7/oGzOWf9xMANwgHV2fa'),
('maxine_frami','maxine23@hotmail.com','https://gravatar.com/avatar/56127db8e01c93ef742360e7a4c9daa1','{bcrypt}$2a$10$kGFHHA.8pVNMHt.6Zbrs1u2bol/LnmVTMLNeI52lOrV/WxlwZ5aZW'),
('justin_parisian','justin_parisian@gmail.com','https://gravatar.com/avatar/42654655b7bb26ec3a409b9bd4dda7c6','{bcrypt}$2a$10$3xqEhgVwdo8ZEiGbWpOD0.NsBhUM3tPwDLcDo3PtSHY8gGncJ1kuu'),
('opal_bode','opal_bode75@yahoo.com','https://gravatar.com/avatar/4fef0575f862a2b5b6d5c25faee0095d','{bcrypt}$2a$10$cCY/6nu.75EH9j4.fogVVOW2W/6Osz3MYIBhfIVTGOkPCvc4WUh3e'),
('dawn_brekke','dawn43@gmail.com','https://gravatar.com/avatar/e92d2c25d41af09910d927ed7ced3023','{bcrypt}$2a$10$jcWNXkkQVvw3FlNGKPNcKuXCrUoOMHkNblpBYu50Q6LU1v.BPZ7I6'),
('leroy_grant','leroy41@yahoo.com','https://gravatar.com/avatar/c109bbcf2e6c8f88face66138c232199','{bcrypt}$2a$10$nbXsOAWTOklsKejbRq/M6OEl9UAVkTPZtIg/VELD0ihNMJseola0.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('evan_mckenzie','evan56@gmail.com','https://gravatar.com/avatar/041c35b94cfd2c127a6ba5345dec4182','{bcrypt}$2a$10$TGEeQ1DmN.p3BuJ7/j/bzOYzwi0788nxkFYQvAHmY9SCKLOM6u0y.'),
('ada_hansen','ada.hansen91@gmail.com','https://gravatar.com/avatar/7495a620d5af052d3dc0eb464f6ec774','{bcrypt}$2a$10$3mkP4rSvO4NXhldpjP.MjehTdMncCXJMNlynQh1K1isYWYLn.9h3u'),
('traci_graham-thiel','traci_graham-thiel@hotmail.com','https://gravatar.com/avatar/a12e43dcc976244faa5dcedfc22efac3','{bcrypt}$2a$10$bkG16W2ByyR3P0Dpdk5FAuTq2cGXs4QEYfoVbyBZUGAcEsdXRdFnC'),
('terence_boyer','terence.boyer@gmail.com','https://gravatar.com/avatar/d8a2910387af75729e043076876e259b','{bcrypt}$2a$10$0Byyrf4QMke2Z5oRvL0FDuusfj3U0VTquTZjPdwoLVHbENtRVOzCi'),
('philip_braun','philip_braun42@gmail.com','https://gravatar.com/avatar/02faa4b2f00c8f78a8ecd3663015dc07','{bcrypt}$2a$10$fRYEjXGjOGDAwOj.avKLD.zynyvsy2BYjLLYjBhqyNMWi1Mf3Y0XG'),
('leigh_effertz','leigh25@yahoo.com','https://gravatar.com/avatar/c697cd2f3b13ca10cd497457a40d1c3b','{bcrypt}$2a$10$hIyGI8c6r0npQsx97Rm3se0OcjjI/1UQX8aiVuu/6HpDFYioK8wwi'),
('evan_yost','evan80@yahoo.com','https://gravatar.com/avatar/ceffb5179232611471a2fd8591bfd778','{bcrypt}$2a$10$UdGkMJzCHcPiByAsZIETcej2QnadE7kwSnoXcy7TzIxkHaTNN3PcW'),
('grady_kuhn','grady_kuhn@hotmail.com','https://gravatar.com/avatar/f699ad0b0688acc6a22280547384ae90','{bcrypt}$2a$10$vwfcmOa46cWJx5hniCQfS.SbTBihgpUJp7JzOUOlE94927N1UkduK'),
('kelly_brekke','kelly65@gmail.com','https://gravatar.com/avatar/5b2b32fc33bc46ef5839916ba49dfeef','{bcrypt}$2a$10$g4ijkywsOymkUpwNJN7A9OKvgHNAjPREV90BIS8HKWFYxonELplbK'),
('colin_hilll','colin.hilll93@yahoo.com','https://gravatar.com/avatar/04bcc5e566b3e6bcecbda997114dc874','{bcrypt}$2a$10$R/Mu5Vnekbtq1aO6doJE.OMoXioHPNZuYVFT3FmLShO8tAyLP511y');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('shane_hauck','shane.hauck@gmail.com','https://gravatar.com/avatar/8e8d0d30c8f7aa2942e0f60f7f2a8cda','{bcrypt}$2a$10$Bsw0C2AUG0/FizddD3wtZeXezZk3QvtlYF0wcBRfJ3V5KuFeBINXG'),
('shaun_dicki','shaun.dicki@hotmail.com','https://gravatar.com/avatar/42556967dba680b8cf8aec57e838f2d3','{bcrypt}$2a$10$tKj/6U/G55OTF4ezO5Ax3.q1K8WLDaFAvt7RfQgLPuUm1ExAoskZG'),
('angel_senger','angel76@gmail.com','https://gravatar.com/avatar/80fffec422b9b2545e43c46e664845e0','{bcrypt}$2a$10$W9MGZpcF//dav3CA2dwlhe1Qeh4iD2A.zMmtHRV4qnCfWz09GNXtm'),
('julius_cassin','julius_cassin@yahoo.com','https://gravatar.com/avatar/56c288c8e96291b030143d920696a021','{bcrypt}$2a$10$5QtwEGOwzsQ02EDEDBYl9OalpjAfCUWHTo2alMqG4ZUPM0CsD3Nxe'),
('rosemary_gulgowski','rosemary65@gmail.com','https://gravatar.com/avatar/d60519e845a29a0a931177d4c3f37ae3','{bcrypt}$2a$10$1Q24ODdOhUh9t/3u2HHD..HZsUsQvUx3JdJMWcCYWM.iwBL.a8SV2'),
('morris_quitzon','morris_quitzon34@hotmail.com','https://gravatar.com/avatar/36694af4d8589e088dc2a740f68b65c2','{bcrypt}$2a$10$TgkC1dP/qVyVVKWOFzv9SOmvjCLhwqEJVdgqv9I8U3Kwi2yKsP/R6'),
('devin_champlin','devin12@yahoo.com','https://gravatar.com/avatar/19fc44713a5f21d4b4ea58f069e0cd9b','{bcrypt}$2a$10$Kllm4ex07tzrpNsRIxNB1ukSG5Ma2cFBJRwG4zGMRLtuqj/qGMSiK'),
('jasmine_koss','jasmine.koss@yahoo.com','https://gravatar.com/avatar/45ab4c11324a9ddf00332888004c66ea','{bcrypt}$2a$10$fNh/YFR4ggqzoB2vbP2y4O6pklNZT5g.0WNKrDXXYIvqdBylsknYO'),
('irene_walker','irene_walker67@yahoo.com','https://gravatar.com/avatar/de107788afcea7fc6f7b680126b53d64','{bcrypt}$2a$10$Ncdg9uV9t6eo.ZAqHfQ30O9KVNABleimV2lRM2L0tWV61EQwrjkKS'),
('jon_flatley','jon14@hotmail.com','https://gravatar.com/avatar/5f53917c20419a27448856b47480c250','{bcrypt}$2a$10$Fwhsbq4eqePMHzKkrY6a3Of5ptkHu9CFejMDeBIjt3YjQaIuonO5q');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('monica_kutch','monica36@gmail.com','https://gravatar.com/avatar/633efeeb9929433d8f1169ac673337e0','{bcrypt}$2a$10$huA0Nna3jpAoagcvkrFKmu6Hr6wAWKA4nO5U1y6ZofEtDh5QATFLC'),
('mike_greenfelder','mike71@hotmail.com','https://gravatar.com/avatar/cf92f4bdc8256e7a4e5f832a1391878f','{bcrypt}$2a$10$FnLmEFBlYWytY./qTAOwzu8dR25tF5F86Zjeeue/eT875yrKWojcW'),
('winifred_sipes','winifred_sipes@gmail.com','https://gravatar.com/avatar/07b7b74ada56eacb4b83af0c6925824f','{bcrypt}$2a$10$FQbOButLjfVSGkxcq4COV.IEmRTMi1jmrTHndhUFXWDGso4DORQ9O'),
('jordan_fritsch','jordan.fritsch9@hotmail.com','https://gravatar.com/avatar/17f1ae37c0eb070b911f4f024faf98da','{bcrypt}$2a$10$4B28JwZ0uNHG4GjueMsGW.HlMl/ee819wuMECZNJwTWPE2WmfQfou'),
('fred_sporer','fred85@hotmail.com','https://gravatar.com/avatar/dd48082a3555206bd1e2c6f8094078a1','{bcrypt}$2a$10$QFbyAg4VtBaGe2O0K/JCw.jmwSbkXyERt1y/XjtqocKMSW2YiLyxq'),
('cristina_reinger','cristina_reinger@gmail.com','https://gravatar.com/avatar/7b8af99f327846a53a13d66e514dce28','{bcrypt}$2a$10$gZbq.5jFZRtCNsQUIILYR.KH6ZoU8HE34PjasXNtf5j1nG0HXstVO'),
('carla_cassin','carla73@hotmail.com','https://gravatar.com/avatar/2bdd95cb24ed4fbd6a663f77984300fb','{bcrypt}$2a$10$XWn40nxDEK3ZX0hwsZdC5eZtoTx6QV6dLpwnOKllNHJPA/DNLDaUe'),
('ethel_koch','ethel28@yahoo.com','https://gravatar.com/avatar/af80e8512fbc67959b0273895e5d133d','{bcrypt}$2a$10$sVTa5drnmQR.kH099mNnJ.zHen4zbS.y9LFY/50bQZJv14egh6GDS'),
('carolyn_beatty','carolyn_beatty31@gmail.com','https://gravatar.com/avatar/684d8eefb3d569d9ea6219ab02e7ad10','{bcrypt}$2a$10$bMG/jNPbvTG1L5wwtUiNsuV8cpxF1TmNHUGW1.b.n1i57Xg/ar2eS'),
('yvonne_schinner','yvonne.schinner96@yahoo.com','https://gravatar.com/avatar/e971dc545eca450b9313c0582e2ed811','{bcrypt}$2a$10$T2FjTZ4W9a1o6s8uSVfh2O3Th9bSjwPMPi7d/fYvCXuJksbe2mEba');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('beulah_murray','beulah.murray@yahoo.com','https://gravatar.com/avatar/91c8dcd85895458b2814359491078ce6','{bcrypt}$2a$10$h07Wn92XnwZmlv65nIoVROJFr6xYXRmqhz/pVQYUBh1SIrRskUnFO'),
('anita_buckridge','anita_buckridge@gmail.com','https://gravatar.com/avatar/bd7b8dc0af8159c9f75da93b713d4594','{bcrypt}$2a$10$xeIr/RtLKFsIaKpxSi3za.ozQcecLrVn.U7ZieaUXa3bRraSx1T8a'),
('beverly_johnston','beverly_johnston96@yahoo.com','https://gravatar.com/avatar/60bd85c0dc0d2367152c94d7a7aff2a0','{bcrypt}$2a$10$20wIm20TfiDkdn6QVnCsIuZC9Ms8ujRjV3uGzXidARdWOmNkVP9w.'),
('kristopher_blick','kristopher_blick@yahoo.com','https://gravatar.com/avatar/fd988781b682a791dd2237d9c2ab404c','{bcrypt}$2a$10$K3ONfD4Kc6DS8EOlocSymuYW8gMHuIu/ipBfeUF4ayke3WxL.FEXK'),
('maggie_beahan','maggie94@gmail.com','https://gravatar.com/avatar/778bc9c958dcb038c6174394aa062f19','{bcrypt}$2a$10$1XMZ6Q8tuOgtVfvdUcpwF.jvS3uhfOPPciTkOagEd4WBmDoE3119m'),
('bert_abshire','bert.abshire86@yahoo.com','https://gravatar.com/avatar/ab13875ce2c7e4c26374ff8cfc895bc1','{bcrypt}$2a$10$XPmdLWDkGsFm1Odqa5V5h.wCvCr7OxHbgFTNT5f2MJjEElBbT9rvS'),
('roland_shanahan','roland7@hotmail.com','https://gravatar.com/avatar/1c5cc2d194b8a542f66d6e8f7a1c1e8a','{bcrypt}$2a$10$4c7EB377f7MDyxUUKf7XfekCE5J4FNAfyx5g9RSMV5IkGR03tMwFK'),
('tonya_turner','tonya30@gmail.com','https://gravatar.com/avatar/48d526146671a8e5e3abcd563c3e04ff','{bcrypt}$2a$10$ibQJ6lh.2rXnBLsJpJqQIOnZxrGHcX4VW9tzCl3s67mPcSEpdxC7.'),
('laura_roberts','laura97@hotmail.com','https://gravatar.com/avatar/cdcd6092272330657f72eabf3ce28fee','{bcrypt}$2a$10$Ynk09m0AmcdDs4ukWe0bcuos0uymiORiwDQpEo1tn0VjnggNcQ/hG'),
('mae_morissette','mae61@yahoo.com','https://gravatar.com/avatar/19f44ca680d424a8acfddd5ba93082bb','{bcrypt}$2a$10$8Lv03mlP.k/ezLMmh6SX6Oi9I6E2t5p0z7CVgmSTplS7O4PGMeH7u');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('jeffery_beier','jeffery.beier@hotmail.com','https://gravatar.com/avatar/35cb61f617bae3768a1c82772d0a66d8','{bcrypt}$2a$10$5TMh8Fyn4VahrBT4MhJln.tgSCcASsf17KYn23qLgQvp3JaxIY/A6'),
('marilyn_waters','marilyn6@hotmail.com','https://gravatar.com/avatar/f9ac78e4703c4171805de66e56e30982','{bcrypt}$2a$10$.dq.PaDU2dspU4y8BUaeEuk9CrIy0uuXiXJgL3Rwrud32rT1/WX5K'),
('austin_buckridge','austin.buckridge@hotmail.com','https://gravatar.com/avatar/9017833559ef4ae960a9dd4742772886','{bcrypt}$2a$10$PzpfLqdNf58YhaGorrfO0u/lFOIKMSu3vLineob8VbxUBLJ9CIwz.'),
('edna_weissnat','edna.weissnat@gmail.com','https://gravatar.com/avatar/e301b5d18d4100617a364e68c7d157ee','{bcrypt}$2a$10$GYGlJXQ3zFE69qBApBm1Tu3vEF58cERRXX./xSuZBEZPUvpXhR3mC'),
('raquel_wunsch','raquel.wunsch@yahoo.com','https://gravatar.com/avatar/9715dd6a435ec36fd8b0f9c0cd1d3eed','{bcrypt}$2a$10$4NuyjKDro2ODAMqRnYVDv.iAzQWBmNmCtgZemG0OMVR.nI71Z4CVm'),
('kelly_reilly','kelly65@yahoo.com','https://gravatar.com/avatar/1225a9772ff9022f9f10f8fb4fef1a55','{bcrypt}$2a$10$CW0zRi7l9kSRzZ401xZzEeu16o08atJ0Phoxd6Xpm6msvVOClDtke'),
('julius_champlin','julius92@gmail.com','https://gravatar.com/avatar/a34ae3e709f80ef91406c546c934c18b','{bcrypt}$2a$10$l4gdaEiuA5zNsgxT4rvuBO8j2GUeJnucvMO4Dh1oU7Y3uDZ30YG3C'),
('ivan_prosacco','ivan71@yahoo.com','https://gravatar.com/avatar/a564d1d4d8c949e71731c9388aed4181','{bcrypt}$2a$10$e0dFvZGXZF.ARJCfYYJ10OoIRtuwACbVmmVo9.eXWnmnCox/I3Obm'),
('kim_o''conner','kim_oconner81@gmail.com','https://gravatar.com/avatar/493d9195dc3209f601cb35bf0141e19d','{bcrypt}$2a$10$Ixy.QKZ1cmjtOr967OvX9udcXRZlNMzykcPtHdtDyqeMz9S03MD0G'),
('morris_schuster','morris.schuster26@gmail.com','https://gravatar.com/avatar/2612800d1c5581156817a052e4e2eba1','{bcrypt}$2a$10$upJLbofKejXpp3ZBD4uzs.yXtmy4aqR9szDHsI2oyK.moUoKW7jpS');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('ross_kulas','ross.kulas66@hotmail.com','https://gravatar.com/avatar/9b99db1106ee42df58239b552ccf31dd','{bcrypt}$2a$10$WGm.8vu/Ef5q8I71M1HJt.bJNGLX3JJ7L7YWPjthSt2IPnKmRAyvG'),
('brandon_russel','brandon.russel55@hotmail.com','https://gravatar.com/avatar/87e12446cdcfd0b2757ffb421c52201a','{bcrypt}$2a$10$LS6frpoaA7YqTdqVmL3vCOkkkFD2F8lNg5iM7NlsLZc29AGGlIH1m'),
('stacey_kiehn','stacey_kiehn34@gmail.com','https://gravatar.com/avatar/56a0b4f20f2787edd2f0d67facbaf754','{bcrypt}$2a$10$1zYLk.5sBJaFB6Yy7rjkfeyjboAcsMDO5Ug/Ryy6GsK3CKgsnmvpG'),
('sheri_mayert','sheri8@gmail.com','https://gravatar.com/avatar/31dd6ec639377d23419d60320b688284','{bcrypt}$2a$10$Pf7DvZUAR19p4PuJCET94OBqvkvTKhBN0GZlU43uMS7pm1Q8OKNo6'),
('ervin_morissette','ervin.morissette@yahoo.com','https://gravatar.com/avatar/df9c5d3cc6b76cb42a512506b7ae5370','{bcrypt}$2a$10$/D7HGzr9cSsQV8DNtjzm8.Dca5zfy90EDRIG4oMVJMwN/aivVgM/C'),
('dennis_fritsch','dennis.fritsch@gmail.com','https://gravatar.com/avatar/1fafb37889e7da2510d8eb2b02067b82','{bcrypt}$2a$10$L4tlV5r3XRM0eYtwkKefPOdVgJkPHCOL9wHHYZWrLVOdQ2NRhbH6G'),
('chelsea_brown','chelsea_brown22@gmail.com','https://gravatar.com/avatar/a0bec73293d1838aeeb441e68fa520e2','{bcrypt}$2a$10$g5a4APl./.nKJ4MeJuMKJuTI3wzE8hoLYjPRD3bB3/tWeDEkKUdHm'),
('chelsea_moen','chelsea1@hotmail.com','https://gravatar.com/avatar/47392344546b8aea26a73c04e17e5246','{bcrypt}$2a$10$s8mwBv1VxuY29gkXIQvrwezELlQC/Uv2z0J2wweNdt1Vplk4hSMjG'),
('reginald_pfannerstill','reginald21@hotmail.com','https://gravatar.com/avatar/07ad36bed1f36d17a9ec3fbc97cb0513','{bcrypt}$2a$10$pzjE/V24i7x3uIQ3PupyUOwlXjOFJmXMzkHDU4rL5Z5e/QUOla1JO'),
('pam_mckenzie','pam.mckenzie58@yahoo.com','https://gravatar.com/avatar/3675c423502759d95bde02cfd396f0bf','{bcrypt}$2a$10$dwLEslDkeLUcWCbBD2PqxOr59hORSeJ56QtIgLauyx4P9.Lm3cZR6');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('rudolph_beahan','rudolph.beahan@gmail.com','https://gravatar.com/avatar/9cb3995ef95bdf12ad5aeb0e65014e17','{bcrypt}$2a$10$NhGq5QoHUQtGhIBu/1aDJ.nvoIDWMq2gpdyxGfQixmTGIXDzysx9S'),
('angel_windler','angel.windler@gmail.com','https://gravatar.com/avatar/4d9045c3de50a982e44b81d3994ef58b','{bcrypt}$2a$10$3029zd4iCbO4DLG/I/2CeefpBCsdXmsfL/NbGAlrzteFjSNKGnveW'),
('margarita_rutherford','margo_rutherford@hotmail.com','https://gravatar.com/avatar/ce5d50b549703f124dc89820d1c460be','{bcrypt}$2a$10$eD3jYxF0x7iyX2qdrCY73.nJT69eH4EfnPBU0Ot/ZwnN.nYOaPzQS'),
('nelson_konopelski','nelson.konopelski@gmail.com','https://gravatar.com/avatar/27cbab19b77c6c845bf7e8631e29c198','{bcrypt}$2a$10$bo0pNKAVV2pWIMzZtT248OfbYWRkiokY1IXliyWeopDOwG6NGkC8e'),
('susan_cummings','susan_cummings@yahoo.com','https://gravatar.com/avatar/ffb5b25a5e317a1e70f8577cb31ce408','{bcrypt}$2a$10$u4OpBQO7AlNy1TIhMT1.Nu1ez4dubBeJ2bT.i2sZpNaKV9cYI18wa'),
('andy_hahn','andy_hahn36@yahoo.com','https://gravatar.com/avatar/64f551c3e6f6167588b07054e2e6e26e','{bcrypt}$2a$10$KoZo7nV2VQMqasxxIZrW2uFliy6PYVr/l7MpdkhYM3BmcgEsZ62yi'),
('lester_heller','lester59@gmail.com','https://gravatar.com/avatar/f36ac2ed26d58098a20e2eccf6a7f723','{bcrypt}$2a$10$rXVe7ZQNCePiQ.E7Mgjhse0MVCdOdqjF2jrGUuEo0Ad0fHLaGGfYK'),
('tyler_jacobson','tyler.jacobson51@hotmail.com','https://gravatar.com/avatar/257cfa02002e8b1035fdb1900da527f1','{bcrypt}$2a$10$qIabJ11e2MDC3sGOZU7Nf.yEvp25QNP0dj30PRwz6jWe4tDRsZFge'),
('belinda_gibson','belinda.gibson@gmail.com','https://gravatar.com/avatar/2e26b4ad288fe6a95fdcbd2fdb37a2db','{bcrypt}$2a$10$hET4KfZPHKtFEbG7CTIt5.WMi.d2GBmqYa9MfKigArkdEuyrKCYIq'),
('brenda_rutherford','brenda_rutherford@hotmail.com','https://gravatar.com/avatar/0134934f8e986a95eca5adb8ea8557f2','{bcrypt}$2a$10$d5B3KiiUySzJ8ISWtAaYte4vy34n6x4kgvutnoNXfbbFVBSCWSf/G');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('armando_donnelly','armando_donnelly13@yahoo.com','https://gravatar.com/avatar/cd15d851fe75737ca19ccb37fe5624cb','{bcrypt}$2a$10$GEb3U5TV/RCYZv0SPjNSf.rPGluyTd9uqW7ZGMoOWEleOS8.n4EQ2'),
('ricardo_beahan-skiles','ricardo10@gmail.com','https://gravatar.com/avatar/d2ff30cfbc09381c8c72363a8abe3819','{bcrypt}$2a$10$0NiE8sr8iz9U6aRS8zQJ7uU9WJqlorcYZelbhc39I9XLGmU270c5O'),
('janet_towne','janet.towne@hotmail.com','https://gravatar.com/avatar/9705f4a900beeeaa204bb3c326ba90f3','{bcrypt}$2a$10$r0OBqfr6qCtxYfuAa0p9junzzNw13ZIOoGf/20MkIBLMbASaG2YSK'),
('darin_hoeger','darin.hoeger31@hotmail.com','https://gravatar.com/avatar/e3a79d7b5f509898702817732e823135','{bcrypt}$2a$10$eIsPOUwtPJqgeY8a9NBeKuEPaUK29viWOgxnW9jNVjEr3LYC.DVY.'),
('kirk_dubuque','kirk.dubuque69@yahoo.com','https://gravatar.com/avatar/88af65d8a14dca6b5386faaf2d095036','{bcrypt}$2a$10$o8SdXNJfGXlvw15or9UwieD8WucP8vkUMcTJNHh31QvgqACKPU8dO'),
('willis_robel','willis39@yahoo.com','https://gravatar.com/avatar/b78f90b3d9376c9bac0e33e537725aac','{bcrypt}$2a$10$XR3y42eY9SIQZpedGDS4G.ghWk/co8mZww42rZK12.0qwxeYIhmNC'),
('nettie_greenfelder','nettie10@yahoo.com','https://gravatar.com/avatar/ec0a80f1d19285e59405f78c2c3a847e','{bcrypt}$2a$10$P2Vh/A3I8hH.CIqguXkTLeio8YTqRFcAfnYPc9vkkpPdFTQeuMD8u'),
('natasha_miller','natasha_miller@gmail.com','https://gravatar.com/avatar/d2794629030a04524271b7df2d9ed534','{bcrypt}$2a$10$2D47/kx2DgL5JS6WmF4yV.l.zTu.sjLfD/1cvy64zDaU98wB4phk.'),
('lena_pagac','lena_pagac@hotmail.com','https://gravatar.com/avatar/3a38c469e91a346cdb312a7f65b51ceb','{bcrypt}$2a$10$LnzBiQCm4lw6aKGMl5Xi7u6jsq1Sh2tdfm6tFfhHNFNnEvZ3cEfby'),
('sheldon_mclaughlin','sheldon_mclaughlin@hotmail.com','https://gravatar.com/avatar/2ed0f2889663b62122689447ea9c8715','{bcrypt}$2a$10$GPlhlnQ.5o34vVB87WLpa.c44E.b/7CADdqTvKWMXc4u48U9wjTKi');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('homer_orn','homer.orn@hotmail.com','https://gravatar.com/avatar/b3646aec10926aec6c2cc6e3dd47a66e','{bcrypt}$2a$10$DnYMfBff1iaArlzDWbVOgeYbfORIPcerYkKAsDIMUvOAWGBSWE8r.'),
('mamie_cronin','mamie68@hotmail.com','https://gravatar.com/avatar/f307e7e81a8115ff26127df9144fa7ec','{bcrypt}$2a$10$CdaBTmgTobGRph/dftBsXuyiy0wMdb1PVu3KKHLnmFtyGYxVoyzJW'),
('george_kirlin','george18@gmail.com','https://gravatar.com/avatar/8ce4191af521de069a1ff3f610c81bd2','{bcrypt}$2a$10$/JqhO08X1jWifgBXwgkC1ecqhuPCNuRSSDA8bW.o0WpploIsMLfe6'),
('lana_strosin','lana_strosin71@yahoo.com','https://gravatar.com/avatar/c345b631fb0e98a7bbd1b8f8f66e1c36','{bcrypt}$2a$10$bt2oh4.mU9kxI/uDPmEkzeDes7534NwLIy/GUSBqjHMTtn/kFND0C'),
('jesse_cronin','jesse.cronin50@yahoo.com','https://gravatar.com/avatar/e5d9bd12324742854ff6d6318637ad9f','{bcrypt}$2a$10$qV/kLNqECqub5uVDG83hdei5yk99hYEdq2/3RXuL/RdffThPKznp.'),
('tiffany_fadel','tiffany81@yahoo.com','https://gravatar.com/avatar/0714f11caba787d11988bac7db4a43b9','{bcrypt}$2a$10$zIBsJuPnS3YFT0EKgyR3qug3tu/HL48div85EMsBjA88iJv7lb99i'),
('dan_bahringer-waters','dan0@yahoo.com','https://gravatar.com/avatar/e57f67ba76511d49d215eedd3b78b140','{bcrypt}$2a$10$eUcWrHry3RHRU9HCrKjWRu7F0jskVKq6Jf3Q0SjAQqcMHYYaRScnO'),
('dave_muller','dave_muller7@yahoo.com','https://gravatar.com/avatar/296ee26fca57511795724a4a0d50cd73','{bcrypt}$2a$10$Tyf1GWluJNPOIuREl.R3..8NfAv2tFvLs4Rem8WC5UH9l4mxxEclC'),
('casey_hilll','casey28@hotmail.com','https://gravatar.com/avatar/946f2863af2c2631657264e0bf457121','{bcrypt}$2a$10$P7W6wuca0TP7rzNW6utzgetSR7G2zs7jIze3/RStjRXklnbX4vo7y'),
('charlotte_kozey-hoeger','charlotte2@yahoo.com','https://gravatar.com/avatar/7997d029af0cb3f0ed39dba69ca7911f','{bcrypt}$2a$10$xu9SsbdK9JP4fO0i1sh9c.TA6ZbBss2n/wH.3d60y4mxuifefMuTi');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('ernesto_crooks','ernesto_crooks29@yahoo.com','https://gravatar.com/avatar/9db5762930a6ba4799c5ff9f4934a4a6','{bcrypt}$2a$10$.jNs9vnLEZkgoQ/B2EI2XuPg.aE7r8RJVgsoUXGeI.8m0FGC.FatO'),
('clifford_hills','clifford_hills@hotmail.com','https://gravatar.com/avatar/f6d06ff20f59cabdeee00d549e1106c4','{bcrypt}$2a$10$Gm9s5QJsyt4UJ0FXeuoOvOQ6dJbLrhmvuhviJHMr1lrAZTjHn.CHi'),
('angela_zulauf','angela.zulauf36@hotmail.com','https://gravatar.com/avatar/c48d3f45eb38a2ef2a594470eebf91a1','{bcrypt}$2a$10$kqNLvWU90.aETMjsSF8CbOBvm9VZL/SbK7soJtm2Rfnmyn0WQqZA2'),
('ronald_gulgowski','ronald.gulgowski@gmail.com','https://gravatar.com/avatar/dcb99e12ad5a49b4dd24a8ceb7804242','{bcrypt}$2a$10$qmOgbK2R4JnplULhfnuaH.4RnFTAVtDod4OXBiiYaKqgTJOpMY8IS'),
('jerome_bashirian','jerome_bashirian@yahoo.com','https://gravatar.com/avatar/28e158963ffeeacbc459048f855c7085','{bcrypt}$2a$10$Km1RE8IL6BkhymmbCGmkW.joSYmBLhjMpKbdhIzZfkxlAycHsVEsO'),
('annie_rice','annie65@yahoo.com','https://gravatar.com/avatar/b87497c23aac6468d86e9dae5cb79d5e','{bcrypt}$2a$10$vfoTvA4d0kNU/4T/Dhd2Te/F4VqMGqxBBlnxzM7LGusYMZkTKi166'),
('joel_mohr','joel10@gmail.com','https://gravatar.com/avatar/9c0e3243319c84c629d9fddc07a0b341','{bcrypt}$2a$10$8nSXwsm2X38kWqXpoRPbbeihB/lXy4C8/w9/YUbGodkTjpFoQyFTC'),
('dwight_wuckert','dwight.wuckert7@yahoo.com','https://gravatar.com/avatar/1f8230f7c7e745edcb269f02ae933fd6','{bcrypt}$2a$10$4m6CxTTLRBSFvQJZ.TvV6.FdVPxcyWeBzSNIyEIr.emJxPiU5nBei'),
('rebecca_russel','rebecca.russel11@gmail.com','https://gravatar.com/avatar/25b3c4409064af760a1678e440e3b48d','{bcrypt}$2a$10$eUHuLhhI5bpsSqLxj4nt9.WMd6mJYBBknmfzyaeCLUTIe4Rfl2U6O'),
('ian_farrell','ian39@gmail.com','https://gravatar.com/avatar/8c0cbc32125688b54ecb1bc3a3f8e86b','{bcrypt}$2a$10$f1JUh9Zebh4XhV3SarXF8uSO8vdjpkVZ3UHHSpPXZ6a0wdxbG./GS');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('felix_gibson','felix.gibson29@gmail.com','https://gravatar.com/avatar/649d6fd2a57eb053b5e0a363f00dfea7','{bcrypt}$2a$10$TLYO96mJfQ97DyO/zduOxu5wThSTRU59VepWlWAFM9UvGkv2T.76.'),
('jerry_beier','jerry11@gmail.com','https://gravatar.com/avatar/0281349c340559bec5c9acfc8f412ee6','{bcrypt}$2a$10$ayyol3x/OWgh1mUkMGsPiuwb2UYCEuG2Dfu/yE4isgs2ML8T9PZRe'),
('randolph_wilkinson','randolph16@yahoo.com','https://gravatar.com/avatar/9b8878a97bab43d1aaa618531fe6e7f2','{bcrypt}$2a$10$1tVc4ua2kskg//26lnUh7.ZJKgQTP9AR5ECR4TYzDoZcNevdLcXqO'),
('jimmie_hackett','jimmie_hackett39@hotmail.com','https://gravatar.com/avatar/605684cf23c988fd7c8d0d5ededd1421','{bcrypt}$2a$10$eH/HtyfBCm5wxP664mU1Q.yV7lgV.s9ohFAmRG6dDY2jXT4yj/ShS'),
('jessie_bauch','jessie_bauch74@yahoo.com','https://gravatar.com/avatar/dd32354303a2dbafcd1988efee0fc1cc','{bcrypt}$2a$10$N4Q2NvLQA1SCMpaPmEgJCu3rvBpWtbkBH2iQxjN5TEY2q7wiJLxGG'),
('shawna_herman','shawna_herman@gmail.com','https://gravatar.com/avatar/a216d461cfa00e8da4cab5291b83f014','{bcrypt}$2a$10$JaLSAP9dGOH1byZO0wxEfOeLekeKnemEtfGe1bidWHZQaCafqvgqe'),
('kelli_kulas','kelli.kulas70@gmail.com','https://gravatar.com/avatar/e25c95fb90c690372762f55c3654cf51','{bcrypt}$2a$10$G8b3xUf0mDf4bYdYW1p08exVSNmRq6Qm5OZSEme.wNJ7MrYFcHl1u'),
('tomas_conn','tomas.conn61@hotmail.com','https://gravatar.com/avatar/efc22fc53a24415fdf4b1e52d7d141cb','{bcrypt}$2a$10$2RURUJd9r3qO3kgZ0XoeNOBVza4pPh8WAJaWvZJIm6gicAbCx4dJq'),
('hilda_roob','hilda.roob@yahoo.com','https://gravatar.com/avatar/38360a1cfff3e46d1520bcf25c565d55','{bcrypt}$2a$10$.2j9dTVNN0aLwD1.Hy0cae5kl7tjEakrA0WLaMvPvawTXYw2pfpUS'),
('adam_krajcik','adam22@hotmail.com','https://gravatar.com/avatar/291e9b82b57f8a85c7c43c58a780bdf5','{bcrypt}$2a$10$5uO0ped1icoEh6nxz4MlFuu2gUcy7YpvrOD2ILCmoc7Xgtq0uhwyO');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('leslie_stanton','leslie13@gmail.com','https://gravatar.com/avatar/eaff6c3bfbec3c210f80c01927c2d649','{bcrypt}$2a$10$MYTwUjyQ6SRJyFgim9z0R.PRJEoDkWlIy6fOY/a2fPUwRmvigyibi'),
('lance_connelly','lance.connelly79@yahoo.com','https://gravatar.com/avatar/9d5be5877f9adc15c29934431b2cd884','{bcrypt}$2a$10$fKVxr3ZWM5hN4spjkTCQSO.tb0wS27sIrUQRgNZkjCLsW/TG1TkRG'),
('jean_crooks','jean95@gmail.com','https://gravatar.com/avatar/d8772d61d3259c7e92fa5fc7d69a5e11','{bcrypt}$2a$10$Nzqao2dgi/dFbzbKIS4uTO5p5ASvWAgRbeOy8n4ck2u3hWQXCgt4q'),
('alexandra_gusikowski','alexandra80@yahoo.com','https://gravatar.com/avatar/1bf11e28d835e2f64613e39dbfbe9cfa','{bcrypt}$2a$10$T6nRdvPWW86Qj9udALZEB.Gh/d65LTq789KZ8A6NgK4zdZuI//ehi'),
('johnnie_west','johnnie_west37@hotmail.com','https://gravatar.com/avatar/e94af6f100db50cc46b17190fb254b6a','{bcrypt}$2a$10$RW1SF8QyDu/x5xwD4x6YmextVWJtKjq0pOMF14e5hiJ51qdEiMhom'),
('kristopher_yundt','kristopher_yundt22@hotmail.com','https://gravatar.com/avatar/fff4eca9bcdb6a824839e7def08b84e0','{bcrypt}$2a$10$2r4ulKb2BgrklZdUFcbuwegfpmCRNiiG9Lc.969CvfCZIYlMWKoO.'),
('enrique_nolan','enrique.nolan23@gmail.com','https://gravatar.com/avatar/5d16353598bdc820bfee2b7b1b8e68f3','{bcrypt}$2a$10$KS.fcuBNNz8T61ZISuFaGuyzUCAIca0KSdEnkS3uAroj8G1ufLvYu'),
('carroll_ullrich','carroll.ullrich81@yahoo.com','https://gravatar.com/avatar/38e2a962fb347d7f35e3c81e26750a8b','{bcrypt}$2a$10$uVRRiqD4jYhKjhDk.jOzlu2VtX8RD5eKbkciv909ujuiGdTk.IXF2'),
('antoinette_johnson','antoinette_johnson@hotmail.com','https://gravatar.com/avatar/b976d2d29b71322cb553db0f4cd677fe','{bcrypt}$2a$10$muBhx303EHX.vwRVPYAoE.RNUNLvEgA34KZsD8b1kAdVnlLMou8wK'),
('arthur_jast','arthur.jast41@hotmail.com','https://gravatar.com/avatar/91fc2cbefc933757cb700de58a5b0205','{bcrypt}$2a$10$LIq/RAmqBFvnkYEGYYlcoO5utqZSHlrOpKj0mW382DiSTzZKvtQS2');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('brendan_osinski','brendan.osinski@hotmail.com','https://gravatar.com/avatar/16676333d169534dedcfe48901dd0ac9','{bcrypt}$2a$10$R/4KRHKh3BV0KdXSMsenpuYK7owSN1ss4IoynhjNNcZG1TjrtDokO'),
('joel_hudson','joel57@yahoo.com','https://gravatar.com/avatar/20425ed6e462c03c453d07ad356281cc','{bcrypt}$2a$10$jajXrTCV3NaYRFWtj9fB1.BozSgrJXt/5LVi1WqNWNixMEQaz.iPe'),
('alfred_abernathy','alfred68@gmail.com','https://gravatar.com/avatar/fff733933b0f6c39605cd645c4c16818','{bcrypt}$2a$10$OvWHuStlTYrZQQl2ngZt2.BRgoK.IpVlwl3qcTWYU74gOT908wety'),
('lindsey_gibson','lindsey_gibson83@hotmail.com','https://gravatar.com/avatar/c3d393c925396535401dc62f1f0bb5d3','{bcrypt}$2a$10$8r6jRgRLjV1vez4WHAmBFuRFQRf7TxZtV6VWihCcC/C608MKPIKku'),
('cynthia_turcotte','cynthia_turcotte@yahoo.com','https://gravatar.com/avatar/dd4928cb925a979781d48f1cb4af4eb1','{bcrypt}$2a$10$NKIcAm2l6bzuPbLdq4YDK.6fRb1eeFmNsTcB6JaOow.0I0qAxjt7e'),
('meghan_hodkiewicz','meghan.hodkiewicz97@yahoo.com','https://gravatar.com/avatar/0d4bb2ef22dd5c39f93d340642bee94a','{bcrypt}$2a$10$vpuAvktXwgQeIXa59IUbuuR8jfv3N8eSUNxXN633Gqd1K1ZxLORhK'),
('clayton_schaden','clayton.schaden7@hotmail.com','https://gravatar.com/avatar/3537dbfc3d1e5cb499d884c57a1567b2','{bcrypt}$2a$10$KXlICwleVjMVC6hXpE296uo.tKBKF8nef/V6WM0Bwq6y0mMrZA/i.'),
('antoinette_koss-veum','antoinette19@yahoo.com','https://gravatar.com/avatar/b93c55b6783a5dac2fc2fc79409f2864','{bcrypt}$2a$10$XdeLgj60k2bUUrngJe3rZ.ovkeeifSqC9d3uyHDIeuCGQk3RTjTfi'),
('ruby_blanda','ruby_blanda@gmail.com','https://gravatar.com/avatar/7a4d67dab6ce26c9e780616363d69837','{bcrypt}$2a$10$i6CzYMrDa3WsLNT9oD.AVOwoR70.HGL4Wp/tLngYaRkBHtxHHKWIe'),
('jodi_jerde','jodi.jerde58@gmail.com','https://gravatar.com/avatar/e124235dcaf0beb00ed0dd45297246e5','{bcrypt}$2a$10$zil.Gt2XObrpGo/zbEqPy.HzEYXsLuSPOwZqJKLYw3Vfi/PHEaS26');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('mona_o''kon','mona.okon@gmail.com','https://gravatar.com/avatar/0325497dcfcaad42171706c652445334','{bcrypt}$2a$10$9vzYBGTmndCKahzvwFf0v.86lnf6JaHrsFqLYWHUJmcI66jf3daNW'),
('lynn_cormier','lynn.cormier@gmail.com','https://gravatar.com/avatar/c27228d145b666aec52fe82193806617','{bcrypt}$2a$10$7gLTEHXcRD/llXZBbl5cwOMurUGY8/CLxt9qKvNPYkmZOBHKgDvaS'),
('guillermo_flatley','guillermo_flatley3@yahoo.com','https://gravatar.com/avatar/16a4d6645167a40a2a1d61ebed677a7c','{bcrypt}$2a$10$4WQer0TJgVJc29WVf7vMweceGqrR/DUMegzyIop5bP8RIxbWJtUvO'),
('johnny_orn','johnny.orn23@hotmail.com','https://gravatar.com/avatar/96a52a41e40303c4e1bc55dac70c5c90','{bcrypt}$2a$10$8.XhZdoW7CPJuf6tIYHPkegaZQ0wIjhCWDmNaibN5oKy5G8mwHSZy'),
('orlando_kunde','orlando95@yahoo.com','https://gravatar.com/avatar/0c19cb352eedf497c1ba1547297acc92','{bcrypt}$2a$10$ECQqXd5V8QrnqDuHlQ8WpuCEqaOhk/3uEr5On/HoATQdpnw4tCj3G'),
('ervin_waters','ervin76@hotmail.com','https://gravatar.com/avatar/2e7013cc399d8f1a3a4e2bc20f11d491','{bcrypt}$2a$10$Pj7vkFdmnkKiw3yKa/PyKees3AE6hxpnm24BX85GbBLyf0Wk9M7Li'),
('lorena_parker','lorena_parker90@hotmail.com','https://gravatar.com/avatar/2dca3bde7ce4756944c13660058df8c3','{bcrypt}$2a$10$pvNK54sCJlqJmAcnnkQTWeAwcTNuGdqBPhMlGQhWQCtBy2lenOHNa'),
('katie_emard','katie.emard91@yahoo.com','https://gravatar.com/avatar/5e3fc13b537f29a01b4ada252a07ac59','{bcrypt}$2a$10$kuqPdaSFu1TK/XoiU1U8KOdxvOQIizhbn5VPD1Zrz9txnLzutfUMa'),
('shari_rohan-larson','shari.rohan-larson@hotmail.com','https://gravatar.com/avatar/a79160b39b3f0690dad8016fb5a09242','{bcrypt}$2a$10$.1LcDYy.Zxfxs77y9wQijeACYyyM7qwxt2I.PI/oQz4E9MyE7Cxc6'),
('margaret_auer','margaret.auer@hotmail.com','https://gravatar.com/avatar/7c985af010fa22d1d0c1ae57f9cd749b','{bcrypt}$2a$10$k8ygtW6.PW6UpsIm.XpzbOUUB0atJTZTgSDd0Kif9pxVI/UyV2./C');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('rhonda_jakubowski','rhonda74@yahoo.com','https://gravatar.com/avatar/36e166e797374718661a1f58311c1236','{bcrypt}$2a$10$04U8Q3mezsDAm1sBfQRdn.VhciYcBmQWPgG7nRrW5SR9ZZUdCYL3a'),
('abel_ortiz','abel77@gmail.com','https://gravatar.com/avatar/4869fa26ab228fda8a6dd0bf72e34a4a','{bcrypt}$2a$10$hmrAw8RqilTeBgElZVYxVeYOS1/28w/56AeYYmiItqWjUYp.wSBh2'),
('maxine_hagenes','maxine_hagenes@hotmail.com','https://gravatar.com/avatar/42258fdf37aed49124107191015c329c','{bcrypt}$2a$10$6lq71dQ1l2YCLhSW9oquoOQP5WZ6Gas9URCvIzk9f14u3fDrY.WTK'),
('cecelia_reichel','cecelia.reichel75@gmail.com','https://gravatar.com/avatar/919a56abecc6403f562d4f2c75de8f3e','{bcrypt}$2a$10$MrBxqorEduh82Vep7ZkHzunOsb1Fpd78GOnMGljKNDsizbIe/8bhu'),
('alton_buckridge','alton.buckridge@yahoo.com','https://gravatar.com/avatar/44cd48fb8ed4863ac96ecca348c5acac','{bcrypt}$2a$10$PNUJDCxymF.JhfVFRuVbROio8JPUkai3nxhhU.KsrTP.fTt1duHFq'),
('joanna_roob','joanna.roob17@gmail.com','https://gravatar.com/avatar/17be346c3d5e2e47d225e55b2a393e2f','{bcrypt}$2a$10$RyzrRU/PuFuggRqonyY1Pe.pkegeIA3hchj2T/NbmJW1mDmnEtlfq'),
('evan_bosco','evan_bosco@yahoo.com','https://gravatar.com/avatar/3d3ee60f31961f0e312d9b4f319e16d2','{bcrypt}$2a$10$YAV6meCktjQIJnhg5LmDQO5wWaR6xEWPK/LAkEkSQxRCFglLJHpti'),
('wendell_greenfelder','wendell_greenfelder@gmail.com','https://gravatar.com/avatar/d8c24124aa52dd6bbf7dc3ba7eb35b5a','{bcrypt}$2a$10$5w4jGsOuCC2w3hzBpOlh0O/q.lM0kRaCaYYX53Qz3kYVdcU15Wy8C'),
('allison_towne','allison65@yahoo.com','https://gravatar.com/avatar/66228ee849a64f9b2fe4582974bc6160','{bcrypt}$2a$10$L8YC..NdD4q.5gm6oD6mDuqGq5XgMxTJRRG7i89k3SbQ6KndRO7Hm'),
('essie_kozey','essie.kozey@gmail.com','https://gravatar.com/avatar/0ebf9e09618fdec81619954bb3bc1c50','{bcrypt}$2a$10$nrVFjTtxU2/4VapY2Dz0ye3SgauWVgkn4kZ/5vDAKWk9RRpesydVq');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('pamela_wilderman','pamela.wilderman@yahoo.com','https://gravatar.com/avatar/acde469ba985658db4aa7bfeb572084a','{bcrypt}$2a$10$mNVYMlCfw79GZKo7tFDLTufM2GvMIXAUHTnXnlNiWcPr3Vo5cqcyK'),
('teresa_ernser','teresa_ernser@hotmail.com','https://gravatar.com/avatar/3c838f167f827982915995f541bdcbce','{bcrypt}$2a$10$kEC5AtIngow41ZJrU006MOV7Gtlq.jeaxDGeUZV29l78G2zCoyYjK'),
('viola_parker','viola98@hotmail.com','https://gravatar.com/avatar/ecd7e7ebe0ab81512e90a10cdef002e0','{bcrypt}$2a$10$oKuw4aVsNDWcwI6E9PIxkevo7WtrC0p96L0RuLMQL22g1yh7l5Mq.'),
('raymond_medhurst','raymond36@gmail.com','https://gravatar.com/avatar/39890f632d11001aad848cfa3b117ed2','{bcrypt}$2a$10$f8D2aR2Z64jarN5eLEWUJuS1PjdGTl0yYlZ/yysZ8aelgQrb9RWCa'),
('robin_hansen','robin.hansen54@yahoo.com','https://gravatar.com/avatar/ea5c6c90ebcbfc241124971bfdabb8c4','{bcrypt}$2a$10$abJhflhUxnK/t7gsO7HSve2UC974oNV8WjyBbydh3eRYkXwgLhafO'),
('lawrence_nolan','lawrence15@hotmail.com','https://gravatar.com/avatar/77fbadd881ce218f567a541d87ddc24f','{bcrypt}$2a$10$UzmAY13x7O1H3U6sa8mB/eWt.eIJA3w/FscWyPa.tfXWdmybceV.2'),
('laurence_wiza','laurence.wiza@gmail.com','https://gravatar.com/avatar/0f2aff555ba24369546e525b1e763c6f','{bcrypt}$2a$10$vHX4N437ELKnJHkaVWRC2e2ZFPqiMNl5CtyvX/DjvybmNrap0kBe.'),
('veronica_schaden','veronica.schaden78@hotmail.com','https://gravatar.com/avatar/73652586352517b869ccdcad84f8f5ee','{bcrypt}$2a$10$OtZUg2RA0P4laOdp3LoZM.Be7Qcb/fdLhCLym6m5UBT3qKbSF.2j.'),
('trevor_grant','trevor8@hotmail.com','https://gravatar.com/avatar/26be67bd171a8ff0941ed6c2c4f12d93','{bcrypt}$2a$10$qxpupM4JugUMUh1TCz93cumA4kOSx4j4OHyPu16cvikYu8T6bFppS'),
('mercedes_kutch','mercedes.kutch15@gmail.com','https://gravatar.com/avatar/370d600e5fd2feadc2b77e760037e25c','{bcrypt}$2a$10$PqKZkWvsTg0YBNgqBTERf.JStDnh1XWxHPSn5dgpN74qb480oJCZi');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('justin_streich','justin96@gmail.com','https://gravatar.com/avatar/ca95d4ae6f1b97a8f311513c7f73a9be','{bcrypt}$2a$10$ICM/W6SmNt0gRXxN8e/ZZuMXSrDL9EnP5QjXiNA57rvdmvwENQ/dm'),
('april_jast','april.jast31@hotmail.com','https://gravatar.com/avatar/2bcab0f3f097ad9ebaa60eadc557dbc8','{bcrypt}$2a$10$OkF75.bGqixEYa/jjsPQMeh9Z8dTJ0c41gs.Wn.wtEtEH0kFjMVTm'),
('jimmie_weimann','jimmie27@yahoo.com','https://gravatar.com/avatar/6a8313e0cfd0019d303aa786880bd8e9','{bcrypt}$2a$10$7O3R/02nGiM.RyaGALc26uPhznlxSS1RRsapcCmZKvi.DqAMT3wkK'),
('inez_lynch','inez.lynch@hotmail.com','https://gravatar.com/avatar/c6575904c78252a97192b174725d29c4','{bcrypt}$2a$10$yJKLKM9A9AlsB8c.Lb8.COXlriAEjO5nsCIK.MrPUdmK6zxmXgYV.'),
('randy_glover','randy_glover1@hotmail.com','https://gravatar.com/avatar/83714f2766fbf2aec961093c5745fde3','{bcrypt}$2a$10$1t4ewxaBF.YQtk1b2YjPkuouEvCqfPOJYSIhwwdK9qvVPGC3qf1fS'),
('gary_fritsch','gary14@gmail.com','https://gravatar.com/avatar/be126ff10e4a1d4b1febe0079368cf37','{bcrypt}$2a$10$.MC9f/LryuczG4j02kNYr.Dn7IytMUq4Au9tpLjjxAc0Ds/SxEq72'),
('roderick_schuster','roderick.schuster38@yahoo.com','https://gravatar.com/avatar/26c1612b29178538fbcc7738ccc23fa0','{bcrypt}$2a$10$jg0oUjAnr/HI2KbspTUhqehJwCWE1vS761fYRFqBGoRLdq8xhuGCi'),
('yvette_schultz','yvette.schultz@hotmail.com','https://gravatar.com/avatar/76ae72c098618830eec6465819faff5c','{bcrypt}$2a$10$psj9eHrIAdv49fS5Btn6CewZKoMsbuR7XJH1/edSuvfAQb4eA0Pyu'),
('ana_corwin','ana.corwin@yahoo.com','https://gravatar.com/avatar/2189ad421cdadf2c5ce65ed413e591e7','{bcrypt}$2a$10$DV6DojHxvcY.5pg6WM2.r.LpPVwuBM6YhjSMezqxj7t1s5QeUSFLe'),
('cameron_brown','cameron_brown57@yahoo.com','https://gravatar.com/avatar/ddc81e0bddc8b651e9e21e17d9002bc2','{bcrypt}$2a$10$9cGtwbB2oWe5j01k2CZPqOwRN/sux.M9nx5utk6endtqOk9gXlokG');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('maurice_considine','maurice_considine36@yahoo.com','https://gravatar.com/avatar/fd20f34e62c4c5d51c95457afe427c8f','{bcrypt}$2a$10$HUqxDG.XC3W4/Hw5ZcwzM.sefFmJ1d2Y/FX0FuqbhM6gzlvVipB3e'),
('taylor_ortiz-krajcik','taylor40@yahoo.com','https://gravatar.com/avatar/0cbc941d6df3ad02661f426711bac62a','{bcrypt}$2a$10$h07VQhE.vBqqjObVIfmqyeTMVOjoZyt2uPEGEJDGXxocjxF07ghaa'),
('nina_rippin','nina_rippin66@hotmail.com','https://gravatar.com/avatar/d5df2f1408ec9c3ade3d8628d9a7293f','{bcrypt}$2a$10$Ox9U4Iqpc/e39O684AKRgOR7RlX0IcmDdpOSIOdh0sZ2G/lhsl4vm'),
('vicki_roberts','vicki.roberts7@yahoo.com','https://gravatar.com/avatar/d0549a5f31d4eb530d4e772271cb1dbf','{bcrypt}$2a$10$hKRbNgi2OFrcaA3paFHHmOr9ScmKYn2JjTxTtlOWf73qAL42qu6aG'),
('russell_rutherford','russell_rutherford@yahoo.com','https://gravatar.com/avatar/53620a081d25711aa7f42e16b1cad5c8','{bcrypt}$2a$10$3wIIMCTH7QkiMKYXyW7obumMebjfK6eUy2TQdsglFBXteX8rQL8XG'),
('alton_jakubowski','alton59@gmail.com','https://gravatar.com/avatar/f5d5398c5fae879983c16b803e327b45','{bcrypt}$2a$10$VlL.kk9p2.Pq1hj18/.QTO5FiMxAGHy3f/zCCqpn/1U47p1QP/Okq'),
('rosa_legros','rosa_legros@yahoo.com','https://gravatar.com/avatar/ce6e62b4609fafb8ffda6642a49fca18','{bcrypt}$2a$10$H55K28CpLkOLVpeRtn83CuXDi9vAR5oFYq0DpIgE7P38XG9/nE4jC'),
('lindsey_stanton','lindsey.stanton@gmail.com','https://gravatar.com/avatar/bb0b61ccd6d3a55d35017fef23f05cf4','{bcrypt}$2a$10$LnVGT4Ob1TTPVA.4zJrcAObFUlj3XJbR3fJCXj/6m1GDnRcpu3ptm'),
('hope_wisoky','hope_wisoky73@yahoo.com','https://gravatar.com/avatar/0f823093832dcc5b05fe28c1c635903b','{bcrypt}$2a$10$MJjPSrcm4TP6xJHyEAuDmuFGi2ZZ.D8c6TKGosgDHVDxlAMCdfODK'),
('claire_treutel','claire31@gmail.com','https://gravatar.com/avatar/fc344070049993476a1afb6adbcf423f','{bcrypt}$2a$10$7NArzervzGzEVNWqgcBfs.m95Hth9m1kpd9LWtip/lrLQQ6pZhCwO');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('mae_terry','mae6@gmail.com','https://gravatar.com/avatar/85cef8fbc5708d3a135a9ffa37efab6b','{bcrypt}$2a$10$3tkqIvrMts8MHt1pTAO8MeXfRbQR5rclFlhQU5WVEczMPs8fMAGM2'),
('freda_mitchell','freda.mitchell27@gmail.com','https://gravatar.com/avatar/9dc6446596103c36c2a959ca2612e575','{bcrypt}$2a$10$2BLzpB825mYiCISQuEwV3uub83RbfxX03OG.cXhE6M5ROHsTDK9G.'),
('stephanie_metz','stephanie63@gmail.com','https://gravatar.com/avatar/9f951c40f953a642a257be9949ad64c5','{bcrypt}$2a$10$YOo6GpVmpboPyVDYrEMnrOeH/ZfjQK50Yl645z4ilNqpi7s7.Proa'),
('jaime_shields','jaime_shields96@yahoo.com','https://gravatar.com/avatar/bb381ff869c2b3b08d8892458c0f320c','{bcrypt}$2a$10$Rk0OnAgV9MdwLsyzI2YxgOEECGSnZv3JPkRQvccQelvEs1dGJ9JTK'),
('connie_hoppe','connie.hoppe@hotmail.com','https://gravatar.com/avatar/331f9e23b990f926a840f58ef6e83df2','{bcrypt}$2a$10$KjFCyl9ZESFVRh.su9c2pOzlp2CiD6uINtty3IPEjbjb2viDPjgt6'),
('alexander_stehr','alexander_stehr@gmail.com','https://gravatar.com/avatar/d4aeb14f342a27145e3e54ad8680f824','{bcrypt}$2a$10$rlwyvsS/nl8Dv2FnOWuzbuDOCs2AB2Nu9U/ktIhO1OeYC42DfWs4K'),
('rene_runte','rene.runte94@gmail.com','https://gravatar.com/avatar/df301b412acf5233c0272afebde082e4','{bcrypt}$2a$10$Mh6sRbsNLfyYH5.gg1Mf2.skxGw3N2amca5.MQzP4N9nQJWU3gd6G'),
('gordon_marvin','gordon.marvin17@gmail.com','https://gravatar.com/avatar/6fa1949b0a42891f98441b628ebfde85','{bcrypt}$2a$10$4n5mH/9R57gsakjt1SZJEO9DBV3mUCX/JZCuuMjFiyS6ZZAEXHMQa'),
('wilbur_labadie','wilbur45@yahoo.com','https://gravatar.com/avatar/3e5640984d9cf9949eaf0a46d9affa49','{bcrypt}$2a$10$jDG0TX3cyFr5S00uw7MXNevtOH5YB54z9U/6lIzTRWmESSxLwbP86'),
('willie_quitzon','willie4@hotmail.com','https://gravatar.com/avatar/a5ba7696fa1e31da23e80f48208a99ee','{bcrypt}$2a$10$xwCBghGM8sHJLb1KxqCDM.lh2frdCLBx44ZhZ8cSCfHx45Mk6Wpz.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('andrew_bogisich','andrew22@gmail.com','https://gravatar.com/avatar/89010bd4091600ceed9aa1bcb6b2dcce','{bcrypt}$2a$10$PrkdzZJmBt9jYvUZh7/RaOXyLvYBE/He/XpxIoEjdM3OURxJ8NF9u'),
('arthur_weber','arthur.weber72@hotmail.com','https://gravatar.com/avatar/b0fbbe7fbcb9e1880e471de3a899739c','{bcrypt}$2a$10$SQYRUCQdv.gF8zHCePDK0eXEo8Xevnggc1TFbgGo5PqAf5i1ADAcm'),
('vicki_effertz','vicki_effertz@gmail.com','https://gravatar.com/avatar/9acae2685586719943dbdc8cd4124327','{bcrypt}$2a$10$v0Wa5Gz6XInjSIDc9vj79OMU7GoXMGn2cOzxjpwMj4EZB56f3Y.De'),
('joyce_reynolds','joyce48@yahoo.com','https://gravatar.com/avatar/5c0ae441c089ac078aa0f08a3b25437d','{bcrypt}$2a$10$8SXZS0O33Tk2yY0CKavZwOqd9LP7B5kU9Wq4kfYFmTWwcaYrp.es.'),
('jonathon_hamill','jonathon.hamill67@gmail.com','https://gravatar.com/avatar/083be176c5e7d49a8c6da114fd419fa2','{bcrypt}$2a$10$A3K7Xg7MpSWpr8nKbllAvOKgEDupx7g.VV8Oy/h0Az6YRpZSE8a9.'),
('janie_hand','janie.hand@gmail.com','https://gravatar.com/avatar/f1da0a58927c61cb4ff70812dc3dc8f4','{bcrypt}$2a$10$GrnGWNHJPMmgBOq9eae0UuQRVKbCex04vNHNEuPiXmKXWnuQ3rKtm'),
('leon_towne','leon_towne@hotmail.com','https://gravatar.com/avatar/94c87e06b31b42e210469ab6a054a685','{bcrypt}$2a$10$YsAhoAN04YePwqkVtwjKXe3q.c2vmpdjFV/2atbdSojGU5wjpSg0q'),
('arthur_willms','arthur51@gmail.com','https://gravatar.com/avatar/c32ac585abade2b75bf8e547a4fe72af','{bcrypt}$2a$10$hccCNGe/Cg4aaPgf46ZbaekAIpWip969v00baX3u9go0yG5aXjOFu'),
('sonya_o''hara','sonya_ohara30@gmail.com','https://gravatar.com/avatar/a66fd0e308a7a8158cd5bd48ae3f352c','{bcrypt}$2a$10$GLLmbZomRUwOGrI8gptNnO0QG4.yjUdRnhRI1MogiXVtSbrqvHw.q'),
('gretchen_nikolaus','gretchen89@gmail.com','https://gravatar.com/avatar/e5cc27aeab8214937c79ca7b22c71e7a','{bcrypt}$2a$10$8HcqDJcA5s8kJUWsZKQPCO81wCF0QcjfgnKOHX3yIoC7Z8E6WcpHa');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('jackie_farrell','jackie.farrell78@gmail.com','https://gravatar.com/avatar/71b7eac18d2e29da19749e1b1420e96b','{bcrypt}$2a$10$2QN9xdHfomlanSeDiZEpjuYPlf8kXwhLIGO6d7bmIslUnGIiklxei'),
('mamie_towne','mamie_towne@hotmail.com','https://gravatar.com/avatar/340c16565dc2cdfad204b93b081546ef','{bcrypt}$2a$10$znBb2o6q7QQ/MXR6ZV5yju.VML60o8LCrj0TOhQQTD36swnkWVzSC'),
('whitney_stamm','whitney.stamm82@gmail.com','https://gravatar.com/avatar/182ea96af7105669cd06185e9421856c','{bcrypt}$2a$10$160mMofTX0eLeNOm3YYAjuI0SJA8tTavbjXPgWjGVysVslKyjRwRO'),
('woodrow_stroman','woodrow80@hotmail.com','https://gravatar.com/avatar/1a64709d226be50e2f0f5cb1dfd5f14b','{bcrypt}$2a$10$ZexorqjX0el3xBS80cCwxuDC18IwnwZ8TdDOfHlOV8M2RIqzAjA8e'),
('evelyn_leuschke','evelyn95@gmail.com','https://gravatar.com/avatar/fef27b96ce7f519782b9bb84f427a460','{bcrypt}$2a$10$esICZyE/.zRCA4mUfrewPuFPyrv/gOyMHm7tnGs55SD4o94od7FyW'),
('ruben_kunze','ruben_kunze@gmail.com','https://gravatar.com/avatar/fdd021b33ab574441a160f0cd1e3688c','{bcrypt}$2a$10$OesQIPD5H8gJzLBuyS/.AeoznJpCMR7lY0Bd8zymGaphCEh/YA7cq'),
('muriel_kozey','muriel16@hotmail.com','https://gravatar.com/avatar/a9aee59d36f2cf5a442979c36fe3280a','{bcrypt}$2a$10$tmxzP5hAKbV7kBAUe/62E.nND3r1X/3IBpPfo45ya9Zmn4G.Xf67W'),
('alexis_klein','alexis.klein@yahoo.com','https://gravatar.com/avatar/9c3f83a18dbaba6e6bd2bd4e43076733','{bcrypt}$2a$10$9XzxwUC/3VmgcBR8lq43TO8TR2c3Vvt2PlSVxNds7oRh01PL.b2sC'),
('miguel_cummings','miguel91@gmail.com','https://gravatar.com/avatar/d1b57f478022bff7f96ff29a82f3a602','{bcrypt}$2a$10$nk32pfm4FqsjAxakN7yWseEsbzMqw1zfOSPQNqVb7SI34Sq9D7ufy'),
('luz_ernser','luz.ernser36@hotmail.com','https://gravatar.com/avatar/4e18670f15420794b2d142334d6c2746','{bcrypt}$2a$10$aDrBAD2Od4SIFCqj9C/AKeWqx9gLL/b4NG0pD0aAoXyCSbyyPtOou');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('santiago_schroeder','santiago62@hotmail.com','https://gravatar.com/avatar/2b95f5b3d6780b8863b819fbe3d62433','{bcrypt}$2a$10$7a8rAt3Rpq9uGUDRc7Nur.jZ0opDhuk4ECX6uDTmHF656.3SjDWnK'),
('elaine_nitzsche','elaine44@gmail.com','https://gravatar.com/avatar/2a9ae94ebb176de3340742f1fd47c829','{bcrypt}$2a$10$ETo2OAaRyNkGGmLDgW.YzO1J1S030cAxB212PDArRX2jOT5n2lF.u'),
('tonya_kutch','tonya_kutch9@gmail.com','https://gravatar.com/avatar/e336ecb99d39d9839dc09a960db6f1df','{bcrypt}$2a$10$nnMvj3AtoYZbj65WRnEkyuAMh5Hbo5AsUmLgzfJ66aqrmtZE23ErC'),
('domingo_lindgren','domingo27@gmail.com','https://gravatar.com/avatar/db1f1ebaf5861cbfc92dbd5bf2954498','{bcrypt}$2a$10$WsiKCSafiVG2lLsgQuwGv.xd9MhkCFDpWS7xLmcaq5hx.TvuUNQnO'),
('clifford_swift','clifford56@hotmail.com','https://gravatar.com/avatar/fa52df53bb8fd7d1c2da65032177c7e4','{bcrypt}$2a$10$31afGsz87SqHcG5vZ/gTmuQkX6zDHmKlQ96KSEPIFVXKfDckyTGuW'),
('leo_purdy','leo_purdy71@hotmail.com','https://gravatar.com/avatar/08f80d03da555ee90076978f97f8e3a0','{bcrypt}$2a$10$xVGAoGdLYtXsv65i5l053envFb7JYKhIieruPv9QJUWHGdiaulQ5G'),
('ella_treutel','ella.treutel@gmail.com','https://gravatar.com/avatar/5c3394603f2c2037b53eca51da2768ef','{bcrypt}$2a$10$KGNAyFkYqaE9zF1ne0ihXufqXpdA8NJ.67Dd7Y4nElSWmfuqCN3gu'),
('monica_olson-d''amore','monica20@hotmail.com','https://gravatar.com/avatar/03db5528331017a8f1d80e6546b62582','{bcrypt}$2a$10$AOgf4j8ivJKYNZwajF9Uj.LCYk8XB4SbSN6MWjibU5ne.HpwpSAZi'),
('duane_carter','duane_carter34@gmail.com','https://gravatar.com/avatar/c5f9d255b0adb3fba384c09cbaf8f3fa','{bcrypt}$2a$10$5g6e7naKLzsnKv8XP9gL4ePhpWTFMZtZDutiSGR9PPGmeOjgM5C0.'),
('enrique_lemke','enrique_lemke52@hotmail.com','https://gravatar.com/avatar/9a4e9bd75057aa02f6c0e47b1e13efb1','{bcrypt}$2a$10$9CeQcB.nDBcM13So0AD/juYF713qZj6vqC3FNFVhrIkJrDopM..li');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('julius_durgan','julius5@yahoo.com','https://gravatar.com/avatar/07267ef09ceb188e0748db493fe55920','{bcrypt}$2a$10$R4AuS.HBWZpczFHpulXu3.DHL2X08eODV.dSIusZeLSxKKMAs2i1G'),
('tara_dach','tara.dach35@gmail.com','https://gravatar.com/avatar/489fad575b0da863c3faee6370e7820e','{bcrypt}$2a$10$C911VLBWlfTAhiDEAYkZ5OiU5F7.CPoQfa0AnxjmhzQBrd1Tqe/26'),
('bonnie_gerlach','bonnie9@yahoo.com','https://gravatar.com/avatar/9588b851392d34e740c891c703b9da81','{bcrypt}$2a$10$/4OsrN9jKoHyuxFqh9PKR.8HQTltrc09KixYO/lTFobbJhUq/nHdO'),
('milton_bernier','milton.bernier@hotmail.com','https://gravatar.com/avatar/2b42b7f82abdf5c8b211236e1c1c0d49','{bcrypt}$2a$10$NSgTilX3ihtYnLX.SMw/ZO5tg5qu4rUexIuo/rl82mwMjAdpkNdXu'),
('austin_ruecker-cassin','austin67@gmail.com','https://gravatar.com/avatar/0738ba726de536a55a8b21f606e4deb9','{bcrypt}$2a$10$6AgQPs2jIRtAijmyt68jW.OCr5OqhuIEhg842qfgFcPpA0A7mi/ES'),
('julio_cartwright','julio_cartwright@gmail.com','https://gravatar.com/avatar/64e7169e2a2ed0f481b4e655db16aa1c','{bcrypt}$2a$10$VDOkVmExtX8ElyFyQ4Ka3ejfkJEy80SdYC.qBbrUvbXL9G1Wcq07S'),
('ronnie_turner','ronnie20@yahoo.com','https://gravatar.com/avatar/3f9c783f8a17e6be9992f9a883fdbaeb','{bcrypt}$2a$10$xObUtUU49K1kMGa0e4TYe.3U.vCFc7J4yeLNCSXaz6IQu2Be8QlYG'),
('mona_kub','mona_kub32@hotmail.com','https://gravatar.com/avatar/504070bb3cb4eee1145fad66826a3c3e','{bcrypt}$2a$10$2JSninEnDy4Umwn.qFp/AOCmR6/EUfXBMRer6YMzU2EFs5N/wwZVu'),
('nicolas_mertz','nicolas.mertz59@hotmail.com','https://gravatar.com/avatar/ad47f14ae5ee315dacdbe140b348aadb','{bcrypt}$2a$10$4SAVkzaCgvT1EAAKtsOfY.Ld02foLU1Gzpz82i4TlbSU.gRSrdX/K'),
('marion_swift','marion.swift96@hotmail.com','https://gravatar.com/avatar/4ec9b0ae960cbb3c465f3295e3374792','{bcrypt}$2a$10$ecfY6AogvfXWLX3Rp5Mw0.9sFyjoZ9eM20M0ohkV4n4L3CynfcCGy');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('dana_bartell','dana_bartell@gmail.com','https://gravatar.com/avatar/c9e6224cf5503b599427e69e3e6b1bd9','{bcrypt}$2a$10$hyT9xl3UASL4rsMHkzP6u.C3xwCHNQa1Ce4yr0MbgmxtzyRdLT8Ai'),
('morris_kuhn','morris_kuhn@gmail.com','https://gravatar.com/avatar/0c9d1bff9a2b9a28afa847f695962e35','{bcrypt}$2a$10$vRYi93BXbQTxvAPwtC03g.Y8PxEPN7GPxIHxYMOQOSsI4K2TWMZU6'),
('olivia_murphy','olivia.murphy@hotmail.com','https://gravatar.com/avatar/9e40de46bc53ebeea6a4cac386f62c34','{bcrypt}$2a$10$94miZpaw2IQeKCTzB5LWw.isRo6wK9RwvpK7CEXKryvkTEJoQ7P/K'),
('bernice_kihn','bernice80@hotmail.com','https://gravatar.com/avatar/9682bc0f37bbb06aa6b2924471186e7f','{bcrypt}$2a$10$mQ3/fW9F4YzhN31QaHhRZu0By3vJGXV395fFbqp4b0wZZqg.g1VZ6'),
('pete_becker','pete_becker@yahoo.com','https://gravatar.com/avatar/0536d828b8b93a16aaf6d551bffd1373','{bcrypt}$2a$10$dU4tahz0lHCgBF1EKteUhuWcorwYweENbGqao.3SyuEX5icsbCJs6'),
('ruth_leannon','ruth47@gmail.com','https://gravatar.com/avatar/157f3fffeb48379c4dfa1506ed6a8d7a','{bcrypt}$2a$10$cdzc5z7ZV1D/K0mqxnDWzup21BIuTbp1DDgEc8PIVSc9yFnnlKJ2e'),
('casey_runte-shields','casey72@gmail.com','https://gravatar.com/avatar/ab72b700dffd917b579931023fd0a172','{bcrypt}$2a$10$h33JuIYfKXqWWUwMkurDFOxIOrhw4douaSFHZ3g3PnIn0VdtV55Oa'),
('maria_prosacco','maria73@hotmail.com','https://gravatar.com/avatar/4c5b87d29597c3545098791990ca2997','{bcrypt}$2a$10$Hi5Tmygvmc1VJTy86YsATeagkbJIFtQFQGKDBui3VS/gTHZq5whP2'),
('tasha_borer','tasha10@hotmail.com','https://gravatar.com/avatar/2a5292da2c6c213eba6427570d75c992','{bcrypt}$2a$10$cuzPXfblwBR6DYv.qdrggOWc.R13/ZzAkP64gYP.Vpj9LXTES7HZy'),
('rachael_mayert-sauer','rachael3@gmail.com','https://gravatar.com/avatar/53b196f90bba680db9e9f6fbe1b8c9f6','{bcrypt}$2a$10$VaiwFdVuyr/g6SOJQr/YCO1iWF9b3UzlUvbcBhvGliXDY/1KzaQxK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('brent_thompson','brent86@yahoo.com','https://gravatar.com/avatar/4550812c7d28f9c15141e873cc5597e1','{bcrypt}$2a$10$LisYUG1hUWLJhmdIPux3MOvyibXyj/wHhRPSiC4lx8HkY90KYjG0S'),
('angie_renner','angie98@yahoo.com','https://gravatar.com/avatar/63cbc2e54cb9a454bece80e5f1ad3758','{bcrypt}$2a$10$JeYqLOb3E.Qj7Jsa6KVTIOJF.nXdszb89AGAXLLu0hQdEji0Sjnc6'),
('arnold_mraz','arnold28@gmail.com','https://gravatar.com/avatar/ead1c611e3346aa478b58e2bdd1bc168','{bcrypt}$2a$10$qL0OpoA/Sh2arUD830trNe8DjGii8w2SnPry6ea7Wmt56vQUfa1u.'),
('bradford_yost','bradford_yost48@hotmail.com','https://gravatar.com/avatar/6caf951e1e1da597b4f40be168e478e3','{bcrypt}$2a$10$UzDOBa2GcIng24HNupgaoOu5IM7Ik29uRsogxolmDwjB5XrAngkke'),
('clayton_langosh','clayton_langosh67@gmail.com','https://gravatar.com/avatar/f0795a8e3c3bf5c010034eec72e2d50e','{bcrypt}$2a$10$0YHTq0iA8sbBFSSTeksaqudkoQohFi.w7TubYu/Kx7qJKR1EV.1tm'),
('tasha_roob','tasha0@yahoo.com','https://gravatar.com/avatar/7583a8879174905ed6013816c665a486','{bcrypt}$2a$10$kHaHQhiVDz2jvZ6LZRzApeQmiH4jZTGDsmyDdfpagYG.c2187Nr5a'),
('julie_berge','julie_berge@hotmail.com','https://gravatar.com/avatar/17e067dfc67d9d6770801752797f312a','{bcrypt}$2a$10$gUmORngOsn6WlKwqe6g9VetZh9plK8kF8zDcjge6MLT26mEOfPc3K'),
('duane_connelly','duane_connelly@yahoo.com','https://gravatar.com/avatar/8bafb9b19f573e4a847be90420541692','{bcrypt}$2a$10$XAKkC5feUiUP8FRmdxej/e/RnM5n.bMApzvpP72n3Syz4WAIRbT36'),
('derek_cassin-hermiston','derek52@gmail.com','https://gravatar.com/avatar/66b333cf9979634b17275c5540047f1d','{bcrypt}$2a$10$HbrQQW0R45KPD/CEj9j1z.w4lyNUcVTV8g4WIqWX3ABgsoeeH1Jaa'),
('suzanne_morar','suzanne_morar74@hotmail.com','https://gravatar.com/avatar/7953d6c7b1a7a52abd2831a45ac8ffe0','{bcrypt}$2a$10$aI1rhnAATRM7PcOvmx8.o.0Cx5cj/0LK92TC81l12c3rb0kOn34ZC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('sandra_o''connell','sandra62@gmail.com','https://gravatar.com/avatar/86f7403bcfe9f56e6179a930e390441c','{bcrypt}$2a$10$mHTBarpcPLrUZZr19wbz3OhPNvmNrAOKKhxOYw5t4y8..kITe4K2y'),
('fernando_ortiz','fernando_ortiz69@gmail.com','https://gravatar.com/avatar/3a37623513af6bbc8eedd5d87fd82930','{bcrypt}$2a$10$7lIvCJtFuoxymDEMEVi3fO.DrmEYLSbn.Pem1fs83BJLkneU1GE4m'),
('rose_fisher','rose_fisher@hotmail.com','https://gravatar.com/avatar/677218f38daa9c4f011701a250dcb2bc','{bcrypt}$2a$10$WdOZhr1OHGKBHtDG5OVSf./.NSX8HhjaCXp7fs5QPhORrNDIaGMoq'),
('roman_stiedemann','roman26@hotmail.com','https://gravatar.com/avatar/119d0acfd90ea91a2c74e1450ad769e4','{bcrypt}$2a$10$/kkCtEwYflBUeQpU.5CAF.lFoBZBLj61stlLpmpKZJdF6MQj/rQtW'),
('april_bahringer','april90@hotmail.com','https://gravatar.com/avatar/b76d7c05f5f681bcc9343aaa21ca96c9','{bcrypt}$2a$10$JxhTAqAxAtnIVEFD7NImD.x31kuILReBFCQn/nnGZ91WQVo2Wp3yS'),
('inez_reichel','inez37@yahoo.com','https://gravatar.com/avatar/bd182e61cdee806df35c0391365a6f18','{bcrypt}$2a$10$0mgF/IsavA1bqswL1k9F3.fdRDSsWcUWaBTJbGUrIcfT5PEn1BJXC'),
('clarence_koepp','clarence.koepp@hotmail.com','https://gravatar.com/avatar/22df8440c6952671857d49045c376006','{bcrypt}$2a$10$ipCYOQB2wn9PvjUSxgfYxOlQGeOTN099bQlOkPYkgWE7nFvlFywhW'),
('chad_trantow','chad72@yahoo.com','https://gravatar.com/avatar/9892c43627ca67e395e842c3c36aad1c','{bcrypt}$2a$10$mZc1H3x9JMiUql/QetBTQOwsf/vAG6tyd6K.7lAWmy74QRirSWBWi'),
('morris_nitzsche','morris_nitzsche49@hotmail.com','https://gravatar.com/avatar/a33aeea3209fb136a78f75306828bed4','{bcrypt}$2a$10$EPY/H86v9fygb4d.2lSNE./iblaWJmGXkEcdG9.LYdL/FNLn8QO.q'),
('merle_schamberger','merle83@hotmail.com','https://gravatar.com/avatar/2c8506c44599152151afc8ee8fd4aa14','{bcrypt}$2a$10$XNsZ/nunotM0ZpNtEe2z4eWUcjDevkA8nHxI26ZYXQ2l7SiorWMVO');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('everett_breitenberg','everett.breitenberg@yahoo.com','https://gravatar.com/avatar/84bb9603067db265e5b5d06b34395abe','{bcrypt}$2a$10$HCkRk0DwH/eMftfTGIaNVur.2Id0frg2uJPD3njC.rhS1u7lvh9my'),
('joe_o''kon','joe.okon@hotmail.com','https://gravatar.com/avatar/755a78b26479a36ecca073e9ca1c10f5','{bcrypt}$2a$10$VgDZOBaHLrya19dIOkdVOOxEXuA1V3A7MgretY0o02wRfTEufsNJm'),
('daryl_rosenbaum','daryl.rosenbaum85@yahoo.com','https://gravatar.com/avatar/cfff020ab70c4512efb962630190e629','{bcrypt}$2a$10$0q5bYkNHOYe13Nra7A3.TefP88Txpg7D06aXuLJd99XPIR9OjAG.6'),
('greg_schumm','greg15@hotmail.com','https://gravatar.com/avatar/c97e1ef21bff5b70a6c3d9d5720c1c7a','{bcrypt}$2a$10$RTKGe57Km2q1mZeUiFlgMOttRpjI35zj9bb3cNUxi4bWspp1qdmqK'),
('rudy_lemke','rudy81@gmail.com','https://gravatar.com/avatar/60ae75e0313a085baa88524c7130e4e8','{bcrypt}$2a$10$UMm1NrMITorSL81F4XjcP.g9z9iylOFXbj85f8Va06O8NpBSKkoqW'),
('pearl_streich','pearl_streich@yahoo.com','https://gravatar.com/avatar/54f3532e409a015117fcab658e249f17','{bcrypt}$2a$10$otijaOhf5BWBXENI18PHvu7wIhOlifP.PUVsoIjFI5KTRMQTUJwhu'),
('ivan_bosco','ivan.bosco83@gmail.com','https://gravatar.com/avatar/0ea925cea6765cd3726f255a2462950e','{bcrypt}$2a$10$7gyI19wRD7uMHtpcvfcq3eKsP/oi7Qj.tw1kyofNhPXUtFevIljIS'),
('kenny_howell','kenny_howell@yahoo.com','https://gravatar.com/avatar/7d455205cd26958a15655280a03ea42a','{bcrypt}$2a$10$a6kSMq4H9SSBlWOhGTyFuOSZojA5GXHps/55CiHM4WT3j0bT.zGDS'),
('sammy_auer','sammy.auer@hotmail.com','https://gravatar.com/avatar/ebdb07263f638a14e9fbfd46db35c807','{bcrypt}$2a$10$IC2Iod7IX2bJgxWU9uIn/.jN7vgLha5tAK7ZReR006sL7WqW8DiAa'),
('noah_pfannerstill','noah87@hotmail.com','https://gravatar.com/avatar/63504f1619102a6157d0e49267ee39dc','{bcrypt}$2a$10$h4jZBukunnIJxgZ.sSiEv.HDhxGL2x.D6B0LxchZAUYTSJqykq7/y');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('nicolas_barton','nicolas.barton@gmail.com','https://gravatar.com/avatar/f48a8965b544edfd1dc43f102fad03cd','{bcrypt}$2a$10$8KHX1FqDI8xK2t9sSTtcquPQ7CzLmBdrdvomWNSF6HSotBzXWOo2q'),
('muriel_marquardt','muriel.marquardt65@yahoo.com','https://gravatar.com/avatar/d6ea208e2bb1d029ab637dcc77e8999d','{bcrypt}$2a$10$8GsbJk3oi4AoeG6vq.Y7J.HCtWKihreUle0WFBQ110Jzq3PrOk12q'),
('ross_strosin','ross46@yahoo.com','https://gravatar.com/avatar/85ce12576e48cdbcce044e3d3e14fe26','{bcrypt}$2a$10$calE.ZDOHUN4.Q4KJBG8bOZr8KNzOUFttTr.yRtsH2MzztJrOC2Zy'),
('austin_o''kon','austin6@hotmail.com','https://gravatar.com/avatar/4fc0fbffdfc5bf15b93dcad103ae2ce9','{bcrypt}$2a$10$0EnLuqbjZHQDYK6TGIDq3upiv7iiuf8.r3au9QJClG9z4muh0lXsC'),
('willie_davis','willie_davis@hotmail.com','https://gravatar.com/avatar/c5f5f922bbf4ecb1b98b8932ed468ea8','{bcrypt}$2a$10$UWCUTATBoWVQEnEhXYG4/OkGzpi7I6h/qLVoZBRFgr6Ov68Yc/65K'),
('jessica_wisoky','jessica47@yahoo.com','https://gravatar.com/avatar/df253074faa81575f49ac5b855789bf0','{bcrypt}$2a$10$apmgeXQVXMhUFgdUrovjueiVuCQ21lY5VlpNI0LWni8FlDARo8O2C'),
('darlene_wehner','darlene.wehner@yahoo.com','https://gravatar.com/avatar/e08166ae149d12632d5f2ffd8324f0db','{bcrypt}$2a$10$mjzb7.GOkc1.mwVXTgWYUutVLf5EM3sgBU/GKjhgS6RatmtWU0Q3y'),
('ben_breitenberg','ben26@yahoo.com','https://gravatar.com/avatar/e6909eb35e535cf81399fd93326437e5','{bcrypt}$2a$10$EEqZX.BMOd1P2rkKiMuiPuioo32.0uYJdcBGiRuSeCpXICPCU8IKu'),
('ryan_bruen','ryan68@hotmail.com','https://gravatar.com/avatar/1814b16c31dedc6bcbec907d1d803864','{bcrypt}$2a$10$4JfU9u9hWehQaYXtHicIIuqOCYvNEAS9WysavhO0.7viiX3vQNytW'),
('douglas_d''amore','douglas_damore@gmail.com','https://gravatar.com/avatar/2e7cc8d74a6538b52898dc687478b04c','{bcrypt}$2a$10$OwjdXtqJwD.YXBk.0qlNjuPWm2Enx5mhjvZG60A8x8fDKcpu/SS3m');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('jermaine_pouros','jermaine_pouros30@gmail.com','https://gravatar.com/avatar/d08136130ddc741f948f07ca79ac58a3','{bcrypt}$2a$10$8mI3K3wpmtlLSPHdpASvUe1Y6AFqyJZMhfBJLQkpPbc/CoW32iNYi'),
('melody_bahringer','melody30@yahoo.com','https://gravatar.com/avatar/35c51d2a6dc0cb23c380d255ed1b5094','{bcrypt}$2a$10$UxDs1dWf6RHh8vpvrAm9jeycvYYbwVugUNeC7/SsPJd2fB5Ak0oiG'),
('gladys_stark','gladys.stark@gmail.com','https://gravatar.com/avatar/005c87ec9efc23c2748910f519aac375','{bcrypt}$2a$10$PuutN1NW4qA7E.KGFU7hR.yWhfbWZJXG007g2uLuHZRMfM5qPU4ji'),
('leroy_pacocha','leroy.pacocha@yahoo.com','https://gravatar.com/avatar/1d909f733821c1142578733430f7f428','{bcrypt}$2a$10$hP1mFI5joJYWtjQ9Qps0luscfXJxgyZEa4FCvV/xs.Bk0TcBUC1vW'),
('ralph_balistreri','ralph_balistreri59@hotmail.com','https://gravatar.com/avatar/1a044d4e554d7c23aea1f0fa83ceb32a','{bcrypt}$2a$10$kCdqs7MJoyO3trXxPwwHOu1CQcvGKvYjWnz9/.8ERUFafVzemWUtS'),
('randall_price','randall.price49@yahoo.com','https://gravatar.com/avatar/a7d9cfe2fe53c8e08cecd085b3d0cd02','{bcrypt}$2a$10$mqrX7UgHYIyO4M4nlvdxHe4w2JdBk6ikxs07Rzse0SyF3S6eolmGu'),
('malcolm_muller','malcolm_muller29@yahoo.com','https://gravatar.com/avatar/9c94030257f146ccbfb0d863e9ccf003','{bcrypt}$2a$10$wXySyQyv0BgqkXp0q4EeIubehh/hHjRfPKkECQRHoVca7jNisVbAS'),
('alyssa_goldner','alyssa28@gmail.com','https://gravatar.com/avatar/d502cf1acfc263ed288b6a639dd6d013','{bcrypt}$2a$10$p0xV9f0E/sNLUo5TE6i3Fecy.9XwDW4mHU2XJL7iUgYMtcpHEHEWa'),
('lillian_mann','lillian_mann55@gmail.com','https://gravatar.com/avatar/e8f0ce7ee415b698b50e73ae7a8ef623','{bcrypt}$2a$10$knwCefHuNOBezKk3OEx4teG8pwpgqAKEuB6/nlWhpoOZXaqDVMqbq'),
('rochelle_schiller','rochelle.schiller@gmail.com','https://gravatar.com/avatar/03a83786a6120173568f2be0aa4e9b17','{bcrypt}$2a$10$wUCPrQOir1Iw4y5R/cw3WugA42T9N65E5e/3Rgx.EcoEJUu1aUvD.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('bennie_schaefer','bennie_schaefer@hotmail.com','https://gravatar.com/avatar/84e1bf3135cb00a6919e20e874ae39b7','{bcrypt}$2a$10$jiWgvz3wBmgdz5R.D9..z.giTiAW15NMUnblDmdnZTqCjxPa134Za'),
('holly_bailey','holly15@yahoo.com','https://gravatar.com/avatar/8ea85e3f419e57b232386961917cb2e8','{bcrypt}$2a$10$rgHEz5NZgnP0gb8cYJ7BmOtSEF74acedYC2.NkBjI4N3RUWkIWI3S'),
('bradley_rolfson','bradley_rolfson@gmail.com','https://gravatar.com/avatar/6dee5e744f38cdcf4a70199e7270ecd8','{bcrypt}$2a$10$2P8GCr3cqPvid3lZTtGGgOHlVI3srs.PTsGTGU.R3WyEet1OuTVlW'),
('robert_heathcote','robert.heathcote14@yahoo.com','https://gravatar.com/avatar/120a612b4f3f2e7302cad4c54a3d7788','{bcrypt}$2a$10$89yDRCcPVGRAngM1MaNFWeQoj1ixsO0viY5zUIKtPB2R6vcoeUZN6'),
('stacy_orn','stacy_orn@yahoo.com','https://gravatar.com/avatar/ddb28fd36ca2bab9dfbc2de5a92aaded','{bcrypt}$2a$10$Ad75ARmwrlpsioEp6vNKFufyGtpN8PjFsyZECM4hjsQl4BatZfkie'),
('micheal_willms','micheal4@gmail.com','https://gravatar.com/avatar/e8b45d18aa0aa74e7836f679c3ce0031','{bcrypt}$2a$10$aAT2en1bilf7gMhumKOsHetxh2F99QrwF0qwB/fRxelZJQ9y0lXVS'),
('kathleen_herman','kathleen38@hotmail.com','https://gravatar.com/avatar/d5cc8d515c489db25fac5601b403bfbf','{bcrypt}$2a$10$Yfn05Tl3hClGHpinm9SpR.SfuG8TMkA.lEdt9AjRQUKaTwokjgZB6'),
('willis_ledner','willis.ledner52@gmail.com','https://gravatar.com/avatar/0c308715247f1265f92ab68e7d5551f6','{bcrypt}$2a$10$iulbcq2crgKn6v9U5i.bfOhw6uUkropZ.h3cz.GCAjQtt4AKG7.hC'),
('jonathon_ryan','jonathon_ryan26@gmail.com','https://gravatar.com/avatar/d28b1019c76ee3f39366a7250c7d7e98','{bcrypt}$2a$10$WRFBq5YdAf6mKrd6SF6n.umkUstwEr/jl1fIAEq2lhiCYOVtR13nG'),
('darla_romaguera','darla_romaguera@gmail.com','https://gravatar.com/avatar/875d19360a18f15dd2bb35decc3bf5cc','{bcrypt}$2a$10$/MnSKe6Asr30uVtXQ2I01.aSq8Ig4AToKXmzy3zklm026VlQpc/.C');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('francis_crona','francis22@yahoo.com','https://gravatar.com/avatar/df3a169962f381b0ac5ac57d90751813','{bcrypt}$2a$10$XWpWJ1vUExwNx5jlta3j7O/CysFbug4./vS69HbgipIJL9HwEALp6'),
('delbert_cummerata','delbert_cummerata82@yahoo.com','https://gravatar.com/avatar/00fa395627a5aecda338b98a86a2d803','{bcrypt}$2a$10$NK5BasSE/dzawzPwBnBCXecL5QbZdernPFWl64saDnKYSQNdWf/T2'),
('molly_ortiz','molly.ortiz@gmail.com','https://gravatar.com/avatar/c1cb1d38c6cd034b4aabd62728b498ab','{bcrypt}$2a$10$GuMjjXpM1pQUM.lqdvZ/gulxrzXcCa6J/43S6PCG7VkPvqSfnhFQy'),
('casey_pollich','casey71@yahoo.com','https://gravatar.com/avatar/fef04655b8840efaf2d9078e047c3425','{bcrypt}$2a$10$VjvvCrvKUroUn5VB6.CTvuMHB63XM6uw0qgyVtrlLCPjUEjPQiI3y'),
('jan_zieme','jan77@hotmail.com','https://gravatar.com/avatar/ed85f3f4b33aca93e45ed544f437612a','{bcrypt}$2a$10$r.O0svyeZMfwaZdu9H9zW.ssCtRppY69VZ9YKc13y7j171QPkjHhG'),
('marcos_carroll','marcos_carroll@gmail.com','https://gravatar.com/avatar/b0c31b3c5186789aa5d8b179ee61114b','{bcrypt}$2a$10$WZdco2gQiCW4GuC3cypUqO8XGbtAA7H7vuzqj879FR6.Y/dX4agca'),
('pablo_schinner','pablo.schinner@gmail.com','https://gravatar.com/avatar/12f57511b566f13c8993c8c33922b2f3','{bcrypt}$2a$10$Uo1BjFuSfUl4rqJoPCZUxOmvHv20nTj2UKks5z4/Lk9rkSgUrA92S'),
('margaret_heller','margaret11@hotmail.com','https://gravatar.com/avatar/c678ce27eca1926f6b5710ad859bc1bd','{bcrypt}$2a$10$4BOEPiE0NLmYfuhtTjbfceczyOKUUKsAmTWx/y1lAHXNaH59Qtfhm'),
('wilbur_pagac','wilbur5@yahoo.com','https://gravatar.com/avatar/a9255e5d1520a196529750081ab9d947','{bcrypt}$2a$10$XDjn81tKFTgaE4NFL9KNbumtU51fRiKkGS3yAxjlpQVzgx3imHHWG'),
('drew_shanahan','drew.shanahan@yahoo.com','https://gravatar.com/avatar/a1c45ec1762a063b06300ca4f6691a7c','{bcrypt}$2a$10$nXWZNpbf1GMWjbtHb66r.ORGeJCguvVm1iVczIrbZX1LhbhFo6qt.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('brenda_johns','brenda7@yahoo.com','https://gravatar.com/avatar/4ff46532af833fbb04ec3b8cb47063df','{bcrypt}$2a$10$/9YNj0acTISBHSoWU9AFfOxivvC524ZBB6THPfnSBCLuukx3eT7m2'),
('ruben_friesen','ruben_friesen@yahoo.com','https://gravatar.com/avatar/9d1553c651f8d8668edc8a6b5380396e','{bcrypt}$2a$10$bW7kTHObBc/.1Wn.Fogjpu45978ww8V/pRMo.riqeJWclzu/pet1q'),
('oliver_collier','oliver91@hotmail.com','https://gravatar.com/avatar/9b37619c3eb3a1ed5363f95074ffd50d','{bcrypt}$2a$10$6rBXyppAxa24nK3NHTITheVwyuBmdTsKwGtFnfEBTUMZGG.IhCudy'),
('pat_blick','pat56@gmail.com','https://gravatar.com/avatar/752e391f52017942371fcba874f0ad6d','{bcrypt}$2a$10$PZaqr8AtIq7n5B1K3vj9lu7Ui87Eh6XFvpekEaeTMw4V70klouT2C'),
('vanessa_trantow','vanessa_trantow@gmail.com','https://gravatar.com/avatar/a1d724287505410c77a4ac6795bb724e','{bcrypt}$2a$10$.0btwwRQVOesu9Em4xOtaO4OzYlT2ZbNHkit8xxRNjm3ne8GZ5qrC'),
('delbert_wunsch','delbert_wunsch79@hotmail.com','https://gravatar.com/avatar/a92de84b9c055fe76708eebe2b1728c8','{bcrypt}$2a$10$iV4dGny8iUAkMuuxAPQ4y.wd5DLVRQAWdKZh3AJPxoRnj8.Q8wHga'),
('lydia_rodriguez','lydia.rodriguez51@gmail.com','https://gravatar.com/avatar/7889a0775146a23f800f9d61f59996c4','{bcrypt}$2a$10$WiYLBYKwMQa/dMfFxSzEcudLH7twnENG2X5G8yMSAF.rlnBdJfce6'),
('elmer_davis','elmer.davis@yahoo.com','https://gravatar.com/avatar/8bf9cc16a5d1abff8c949d20a78ba76f','{bcrypt}$2a$10$3pUt0HbvBEUgsqdA.ySoHO63fcFV8Ys4yVd0FVEF.FkAi4moqTmm.'),
('erik_leffler-wisoky','erik97@gmail.com','https://gravatar.com/avatar/5602e2843b2a6bca4cbaa80add0e1a4e','{bcrypt}$2a$10$DYO/DBaSGrIxv.w1LBgO.OyOGZPdHU9LLHcRjrU5QiRF8mBxZvOtC'),
('andre_bashirian','andre_bashirian73@gmail.com','https://gravatar.com/avatar/a8f7e2f2b2284967272b1baac0ab0df1','{bcrypt}$2a$10$Tu.uXT40gLDg0T5NNpS3q.1C6ScJEOFDSUCPzwKYGtU0VS6izWp8W');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('ross_hodkiewicz','ross_hodkiewicz69@yahoo.com','https://gravatar.com/avatar/785e5ffa3f62c11185169d47bb797f27','{bcrypt}$2a$10$5ZK4.rTLnmlZMXK6Iijee..meae/nw/aGITVzUfB8eXxzp6C4NCIK'),
('karla_heathcote','karla.heathcote@yahoo.com','https://gravatar.com/avatar/915cb0e0e6ba34e1b93cd72a2a09783f','{bcrypt}$2a$10$NucxHTk4ifg5l9DPvIW6W.q4TSYuZVI8zR9JfmbS2z.vd910nV4LW'),
('israel_collier','israel_collier@hotmail.com','https://gravatar.com/avatar/fd64edda0a13818dabaef37805e508b3','{bcrypt}$2a$10$ncUrTtT.yLcvwOhCUAu5Su9Z6u7P28l35SrUCqSYlKgDYKZno5CqC'),
('jacob_feeney','jacob.feeney@hotmail.com','https://gravatar.com/avatar/e7af6ae026c0b64c95e01b689fe2100c','{bcrypt}$2a$10$ahe4.gIO1XN4EyKeF27keewdIg5gr4AbQn04u9SoEYjH.hZOvCQeS'),
('sheri_marquardt','sheri30@hotmail.com','https://gravatar.com/avatar/25eccaf332ede886895c3d1d592ba8d6','{bcrypt}$2a$10$NrIRrPob9xSZu6gicPlNTuStTYrNQ39AHbNLvAm4R5T64DXD6Yrsi'),
('alicia_borer','alicia30@yahoo.com','https://gravatar.com/avatar/9498a668ce1a445c42034ef0f352594e','{bcrypt}$2a$10$DX4npUiK/Mq5zJRgCjc0we2jiIV2RcnixMnEv6MHgDxpg2Luwv9ZW'),
('eugene_rath','eugene.rath16@yahoo.com','https://gravatar.com/avatar/47447717f1d4ea511bf62eade5e96232','{bcrypt}$2a$10$pKhPOLSCiBPLb.8ppX9i9ON6LRTr.I/B321auVDli5v6LAmaw/rhS'),
('roland_abernathy','roland_abernathy33@hotmail.com','https://gravatar.com/avatar/546ffd5d7324838106c27256e7cc30df','{bcrypt}$2a$10$IEQ5h4104gczEetTz.3ZPuh2KLxRvr/mqaqB.egQIA/s8VcxvJrCW'),
('darrell_romaguera','darrell9@yahoo.com','https://gravatar.com/avatar/a862fa174a701712aa8ed5be8083393e','{bcrypt}$2a$10$POtKGurdbx1TOp8MZcwxV.S3Qcr6M14zYVOJPLrGcfrubmV02FsJO'),
('jack_gutkowski','jack35@gmail.com','https://gravatar.com/avatar/25743b594a89ad5538b002e1dc804e3e','{bcrypt}$2a$10$AbPOF7Nk/d3m1o9YaZ/Pa.gANTsATWeDjJHN2hivkLS7Po3geQse.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('maria_mayer','maria.mayer@gmail.com','https://gravatar.com/avatar/0e3f8bc0560ea7cf2a6d1c054ad93711','{bcrypt}$2a$10$ckhdR4kI8zzmIGXivLwyluXWE3V8e/uJO1ltR/mCm5ODlnCCrHYDq'),
('lula_streich','lula_streich51@gmail.com','https://gravatar.com/avatar/5508f066b7b465478d5ca4855542a0ee','{bcrypt}$2a$10$0Yd9sqjwuC/oERuB55QmeO1YKjFsYBj5FuY6X.DNuPWJmoMWUl5Dy'),
('lorena_altenwerth','lorena.altenwerth@hotmail.com','https://gravatar.com/avatar/bd39514279c71f589ca60673945f6cba','{bcrypt}$2a$10$R/MZG/JLtVaOqSR.2s6/I.5s56eerJxj5pmx/houP83HO8WAQ0aj6'),
('jeannette_zboncak','jeannette92@yahoo.com','https://gravatar.com/avatar/df525e030c4a97f82a88bc134184912d','{bcrypt}$2a$10$t1nuaYy2LCuG5x4.z9IVt.spuETQ7Mo/WX7IArneXuP6BX4IZEtmm'),
('deborah_considine','deborah38@hotmail.com','https://gravatar.com/avatar/290b6e9e60bced377bc325dc38f67a0b','{bcrypt}$2a$10$NNz4xEkJFiKXUzgiZ2hVDeluglsOOoQamcz5XhJvXeD/GGJ3VxdcK'),
('colin_green','colin.green23@gmail.com','https://gravatar.com/avatar/f2d1e49531a46aac21ae9e59dfbfb93b','{bcrypt}$2a$10$F/YdN1mlgob11UnMqw20l..1wIoURwyleIQHhQMZ28lkG8w7z/IQi'),
('glen_hoeger','glen_hoeger98@yahoo.com','https://gravatar.com/avatar/3d4bb49b9573d0d10b066655f613c9c9','{bcrypt}$2a$10$BZiJSQP2JtGA4j38yIgYtOBt/ejviyJWVMkHlt6re9ydGqOy04a6C'),
('jorge_hessel','jorge_hessel92@gmail.com','https://gravatar.com/avatar/802b99f9f9db2d2e4ff9083857381349','{bcrypt}$2a$10$gyxUTMz6d6NELzcsgxdHz.LCZNyWl347EypV1teG9wROHjiPQDeA6'),
('neal_medhurst','neal88@gmail.com','https://gravatar.com/avatar/81a2a9a974e97f7b0a1e9d8acb69e1be','{bcrypt}$2a$10$WaYU.ua1MFPwIrzP6dIQQeJt65h6ZehS2gU8qgO2EGV3NO3k3UH8S'),
('marcella_hettinger','marcella_hettinger@hotmail.com','https://gravatar.com/avatar/e09452a4a79feb45f75bd06e7d2faf42','{bcrypt}$2a$10$ZacNwcD5MfSjQV/6mNxjHOVvYVd0z3ZVa.RZA0EKzbOtqYuqw3zTS');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('rachael_crona','rachael_crona99@yahoo.com','https://gravatar.com/avatar/ee8128d2e56a164a7f374050d261e0ef','{bcrypt}$2a$10$6zCu6qXuC5WSfnIn3m.mZOdeLxSirGEPc0.BUQZEB8X4sOxSK1tha'),
('eileen_quigley','eileen48@hotmail.com','https://gravatar.com/avatar/17c4746e0f435865c93cbd0b96d54736','{bcrypt}$2a$10$7fZyGptapyY3IoLii9OSdO9UXJPB9s2.ttsxxtxewSlpJsjDYPrhS'),
('barbara_borer','barbara.borer@gmail.com','https://gravatar.com/avatar/e9b38d4424ef3bc8c719a97aed6f7a32','{bcrypt}$2a$10$LWPKtjNOcp48fQOYr1jTlOVL9A5ypIgfD.L1Z6GPMvzxrZOsZXHii'),
('floyd_mueller','floyd_mueller18@hotmail.com','https://gravatar.com/avatar/77aff2a3fc43d452943e7b3db35aa5e7','{bcrypt}$2a$10$Y3X8E44Kl9EgK5WJ2oTlT.u1jdMNopFsMiq/m50DPcJMXqx0XucGe'),
('jason_mcdermott','jason.mcdermott@yahoo.com','https://gravatar.com/avatar/0e5b4dbf68e8c841e0390b5e97aca23e','{bcrypt}$2a$10$v/jD/mR/WmFL0.q5RIf76OZZqw2BmUEIRmH0Zs1G./3FfhRfNpDMy'),
('sherri_breitenberg','sherri_breitenberg89@yahoo.com','https://gravatar.com/avatar/7ac950027dc2fdb0720b8aa2ef4ab6b2','{bcrypt}$2a$10$aSxVk5g2KdMoyo7tXkHVRuhenkNsyHk1G8s0l4MF2z2Y0GyUPA5t.'),
('jay_gorczany','jay_gorczany45@gmail.com','https://gravatar.com/avatar/9d77a123522fbd455ebab421d0ac9bf8','{bcrypt}$2a$10$WxlhUrxJqQ96ZZSqwe9NLuDaKYUBHDjGQ79iKHTZw3e9Cem1B.Tbi'),
('calvin_hilpert','calvin_hilpert@yahoo.com','https://gravatar.com/avatar/016bae7a1333d1bbcc56fd5bf80cdbce','{bcrypt}$2a$10$fnt7F0a3HujLXS2IPfqVROGRJeEtQTUcA88YdXUV6kmkRH103Rrom'),
('cheryl_sanford','cheryl_sanford@yahoo.com','https://gravatar.com/avatar/7b0a5ac78e5219bb7e97a15cc05415a7','{bcrypt}$2a$10$ixpelsVerOvkEZSKgLuu.O1zj/Hff6Cmkw8QkrwYycjc475cje5xS'),
('maria_gerlach','maria_gerlach57@gmail.com','https://gravatar.com/avatar/6e652075e64148eebee7e5d73263d5b9','{bcrypt}$2a$10$jyoqruxTQz55zJmiWDyWOeo8F5./9/LVMqs3eV1olTkAU3kL8oK.e');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('kristin_boyer','kristin_boyer46@hotmail.com','https://gravatar.com/avatar/fbd7b65e8f08209fa510eaa3af1b38fe','{bcrypt}$2a$10$1Ue0DLS3UtvoK9xUW/vtreN/2eBqr6d66AFNSM7HOST/UIMOtkmL2'),
('jonathan_dooley','jonathan58@hotmail.com','https://gravatar.com/avatar/710e52288c1dce71713bf7e9d00039a1','{bcrypt}$2a$10$1nstmf1kkEUjnrFxvQJ4AODDoRatr9RbN6nox15nJGsY5d68nDRLK'),
('sammy_reichel','sammy76@yahoo.com','https://gravatar.com/avatar/f6b2fdd0c3ef7d8ce779592eddd51501','{bcrypt}$2a$10$4.3zig4OzZdc8uE/KJSYf.aYGwS1DWxkJsV/KtUty0RqJU1DM23wK'),
('robin_streich','robin_streich@gmail.com','https://gravatar.com/avatar/9dbcaf038631b8ecba1a6c6f4a1185ea','{bcrypt}$2a$10$R7Pt5QuScmGiStw/KTN4y.cYnBM6GzQnOqYE5FtLLDan7cvwl1aAC'),
('frederick_o''hara','frederick.ohara23@gmail.com','https://gravatar.com/avatar/e245b932fdeb5ba615c8661806a7c823','{bcrypt}$2a$10$OGH4HmdC/8/tpJoL5eBF1Ogykh/Ri0hXzG3GLcKI6hEPRSSaxfsEi'),
('edmund_veum','edmund_veum@yahoo.com','https://gravatar.com/avatar/ac54f44282d7caf8d3ccabb159d7a830','{bcrypt}$2a$10$0SlAfeNAxC83PdQ1slzPCutouhN62oJ4cxPWAvDbtdSMgOakk/i0m'),
('charlene_stroman','charlene_stroman47@gmail.com','https://gravatar.com/avatar/9444f2dfac631013c2a0d344944c8560','{bcrypt}$2a$10$3C8x.KLVpHoncImVQiURHO4YCfQdn3ZMfSObtBtp0662UnG/IQVU2'),
('kenneth_glover','kenneth88@gmail.com','https://gravatar.com/avatar/dd01750b0d1822aa2495a5c68284cc3f','{bcrypt}$2a$10$AnowP.ncAfcCQb9H50a.TOPdy0elpwlBb5on2NDlZefmGkAXtxzMO'),
('drew_gleichner','drew.gleichner26@gmail.com','https://gravatar.com/avatar/873d04bd1b9c2394e55dd3cc83300f47','{bcrypt}$2a$10$P9A3sgP5m/1Xdo58YCafqeBNlKIEsXDTPJWjdelZC/lTZbxNNyLmW'),
('fannie_bayer','fannie54@gmail.com','https://gravatar.com/avatar/114d13fca4875266df58e1979b69f89a','{bcrypt}$2a$10$srZL2eWcHWSn4SpIj0Gxz.e.We.aZ4xgmIbqsT42Gts8S4hrkZgqK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('anna_stamm','anna.stamm14@yahoo.com','https://gravatar.com/avatar/988a67393cdd0fe3b42419969d877187','{bcrypt}$2a$10$PZPumQj4yrMvCIAUxT/yROSM/nB4v2/SF4mFFjK/7Rz6p7Sb8EKGG'),
('milton_hickle','milton_hickle@yahoo.com','https://gravatar.com/avatar/cfa64eb5c363e1b6c424412a25deae01','{bcrypt}$2a$10$7dgPHfIEfQSjzkf4Hze0Peldw0F/9pin.aJ9CXTPt2CmFdmu2XHH.'),
('sylvia_senger','sylvia.senger@gmail.com','https://gravatar.com/avatar/1218ce7ac3c4094b93f1123561e28dc9','{bcrypt}$2a$10$kbq1UP0NrdSsqg1uZpiDtezYRILHEfRYeLnFGLO0N.hu6/tA72Db2'),
('jon_feeney','jon0@hotmail.com','https://gravatar.com/avatar/ec258ae9f931020c130e0d0579a883cd','{bcrypt}$2a$10$QI/zDghnAhK.MTa44QiQBu9f1CU51SetSV7ZpHdBXj5XxqQpswnze'),
('cesar_reichel','cesar7@yahoo.com','https://gravatar.com/avatar/51c7274fdf1014d23ffdb7144e17f80a','{bcrypt}$2a$10$G6H5jogDXr35MmilRsDiAO4abBFAtmrmoMZ4Y7404BPmFM0A9xJ3a'),
('pat_kuhic','pat.kuhic@gmail.com','https://gravatar.com/avatar/f0730d6847eb88698454e977d51d15e5','{bcrypt}$2a$10$zxQReI6CvxlAemtVNMMz.e/aoeD5G1OLL/w7e.QNYYk/H7YvRfzMm'),
('noah_dietrich','noah.dietrich32@hotmail.com','https://gravatar.com/avatar/1680a728b340a609354b066c91b4a347','{bcrypt}$2a$10$bnPm78GhBl0hzL2.OWGhwOOOnJGsFDBL8tU/OnJNm0wt7UyxdIJGK'),
('lena_little','lena.little8@gmail.com','https://gravatar.com/avatar/9de9cc45f5ab8c9a967fc02858896446','{bcrypt}$2a$10$.vs8LxUPAJVCdX93lK4jw.mHb9Zt6p42ON.8r2M4IrNkGAAvF4ZsG'),
('nicole_feest','nicole89@hotmail.com','https://gravatar.com/avatar/f915a93e41814451b9326ece1725ba17','{bcrypt}$2a$10$Qxng1LhSLyyL18oFw0S2Qu1veYyU6oPw7NMET8TQqyNtGK8ka.yyy'),
('joe_heidenreich','joe_heidenreich96@yahoo.com','https://gravatar.com/avatar/1435879cbde9aa3da8a97b6332c3d116','{bcrypt}$2a$10$LE8NA442KNYIhmWRJt3rduf1Uvp765dpcovXqwFALppMb8GVSyB9.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('joel_carter','joel_carter37@hotmail.com','https://gravatar.com/avatar/87ef69e970907f51becfcc8db6064781','{bcrypt}$2a$10$.Q42Aq2vizAKJbnapRDZU.xrHB58j1XPy9W1GlqIf0aKX647SBA8C'),
('tommie_ward','tommie.ward61@hotmail.com','https://gravatar.com/avatar/6867357916a5dceeea1568ca6e4c4bad','{bcrypt}$2a$10$GxxcJImcUqRDXNkWe2d9vertL77R8VEeVSlB/1l/LVT0WIYZSDo6S'),
('belinda_wilderman','belinda_wilderman49@yahoo.com','https://gravatar.com/avatar/e43d497a52a63f62a861886dfe352415','{bcrypt}$2a$10$UmV6EEOPxs0XwO7ojHTdn.BuELhTyc0.lpUC2Vvplhgck5B0lGAha'),
('jan_king','jan.king@gmail.com','https://gravatar.com/avatar/b1ca1052f627e45a61401791a671626f','{bcrypt}$2a$10$.p.7.mvY3z.aiN2HYdTX7OHgepd6fiWxcnbnDg92FzyQE7MVwtfES'),
('may_mccullough','may_mccullough32@yahoo.com','https://gravatar.com/avatar/460113e460e6ab06ef19be9663bcb0b5','{bcrypt}$2a$10$3sNwiZ9JqPfC06FVXOnUyOfWx3MLbiP5G4eq9KgPvyNpxNfC8z89.'),
('donald_buckridge','donald_buckridge41@hotmail.com','https://gravatar.com/avatar/3d6edafdbbc0f8ae6b67ce1b05a32c59','{bcrypt}$2a$10$6lgDbAWsAFcVptFDOfYQ7O6QF0zfOdoU5fDLnwQ3/B1z5TBZBd8RC'),
('janis_mcclure','janis77@gmail.com','https://gravatar.com/avatar/9470f2553050582dc9ad6b855c342ba4','{bcrypt}$2a$10$0xXQ3u1Zc4OHsLA1W7JNFu1W2Z6i0eZ7A2Pc70MmMMVFe0Th.J10m'),
('sherman_bartell','sherman34@hotmail.com','https://gravatar.com/avatar/18da4af62b0db7e4e9bfe1967fd4a7d6','{bcrypt}$2a$10$7aGDn/Ao.qKZjO9EaSM.1eW2ROzH1HMTavbyUY66I9zWgbwMigsPG'),
('bonnie_schowalter','bonnie_schowalter8@gmail.com','https://gravatar.com/avatar/513f3370bd76c755f711e639a33fcffe','{bcrypt}$2a$10$36YhjVXMhyPetcqrMdAl4OMPBfNMhth1VNtk.Vh6U8mlHKD9DLQn6'),
('clayton_klocko','clayton.klocko11@gmail.com','https://gravatar.com/avatar/35e9c8270fa3e501cd0bdce7ada1d94e','{bcrypt}$2a$10$1q7Oxemr7I.TSaBkBgQkq.LjkQgBW.h0GCfIEFJvwZJAdjOMK.gP6');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('gilberto_grant','gilberto82@hotmail.com','https://gravatar.com/avatar/814e29057ea404920d34d301b510674b','{bcrypt}$2a$10$XUl6ASy7EQM6gHtzresRQOtd0F0lgjp7LqxLMfVO.6Hhw0qRkACqy'),
('elena_murphy','elena_murphy@gmail.com','https://gravatar.com/avatar/94f0886e628538e5b93f7ece62a0a458','{bcrypt}$2a$10$374UsZBjYOVOjdprTvFcSORelFeRwm/oGhm2rDlyXJR0pmikE1QkG'),
('glenn_gibson','glenn.gibson@gmail.com','https://gravatar.com/avatar/5485c63ae92f16f5fde208f087f21b1e','{bcrypt}$2a$10$V7MuP9Z2MpJh9H7AFFcwXuGoCbwkN8j3HTOAglnF4Vbe.TfUVieSW'),
('marcia_cremin','marcia.cremin@hotmail.com','https://gravatar.com/avatar/20dab94a6cc3010e00bf64c5ff1db266','{bcrypt}$2a$10$U3bcHYVkw/uPaj0ZmlGNk.BWqvoT1Bpf8vQXCR21yN9tDRBUkZfL.'),
('nick_nitzsche','nick22@hotmail.com','https://gravatar.com/avatar/e178710f503932a5f1953e39f2af17c6','{bcrypt}$2a$10$tp7eJnWb/A8wnCEwEneU5uIfPmQKf1hSvzse1DM8bkMLDnkZjazVu'),
('muriel_crist','muriel7@gmail.com','https://gravatar.com/avatar/a41d1af66ea293821a7b09fd68aa7e2f','{bcrypt}$2a$10$kKWIQIay.9rz/zJCC7CHxum7Ojj1DGj03nDqpl8qTgi7.Cl8/8WW6'),
('travis_bradtke','travis26@hotmail.com','https://gravatar.com/avatar/278e57429b4ef6a7f89e517d0473e0f8','{bcrypt}$2a$10$omW2M4Gd8HUtN2ugr/J6KuNgeJKZDWfotKpRDUQsiJfmS9PHPaB5.'),
('greg_corwin','greg.corwin50@hotmail.com','https://gravatar.com/avatar/5270e4beb0857b43c7e16f1303d79f4c','{bcrypt}$2a$10$ZcvoZc/9dDDHtnXn/Qy85eljX4rkBmqjzolarPfz7pz0yyp3HtUDy'),
('erick_toy','erick58@gmail.com','https://gravatar.com/avatar/6596312d42f1346ed585126cf8408c16','{bcrypt}$2a$10$eH66vsusZy2KuH/ogGIm8eLCB70NCK8jf/P1/CZZmyDRlHbT0keYK'),
('doug_schumm','doug40@hotmail.com','https://gravatar.com/avatar/54a3eb52261df7ef71ef6fa5b842e3fb','{bcrypt}$2a$10$yJRNiLonnkWD947/g4TkyudjjwO9ZRHJCfcj8BKSnZrVa0jGiDZuC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('regina_heaney','regina.heaney@gmail.com','https://gravatar.com/avatar/3733919e5fce7dc40bfc456f32b884cd','{bcrypt}$2a$10$/VbtJMN8rVl9TIIMIanDZuBP/2gu/wXgZ9P8SUTGW4GO6JYf2UXG6'),
('archie_kihn','archie_kihn17@hotmail.com','https://gravatar.com/avatar/c56329477c834a5cdc5bd43bd34340fc','{bcrypt}$2a$10$AqYBCYHoXfsR1KDtUa0JjOiHHt2U2vF4gCf0jbo1t1auDW3MVofeW'),
('al_osinski','al52@yahoo.com','https://gravatar.com/avatar/73e973f232687081efb3fd95bf609ba1','{bcrypt}$2a$10$KFnNb0qhDQ965mF3ymKyXuzLnpj1gV7acNPT9gNSqkQ4ZgNULGcA2'),
('mary_witting','mary65@yahoo.com','https://gravatar.com/avatar/7171e9a5cdba9f3c1e1e440301305aee','{bcrypt}$2a$10$wHSyXkpUX9tdllkoqyfcB.TjknpnJt0OqX71J08r/wHVC6T.Vzoau'),
('ramiro_schaefer','ramiro.schaefer@gmail.com','https://gravatar.com/avatar/7828d3c2c2c4d83bc58bb136aae4baef','{bcrypt}$2a$10$Wd5MnYxb.9X.lyGVFc/WkuLS9HyMmNz5GGoVUi6trOs2MCkJGFW/q'),
('tommie_goldner','tommie_goldner@gmail.com','https://gravatar.com/avatar/b33c059f8b1c1c64cf8f00b8c0efb702','{bcrypt}$2a$10$aQypB8wPTtr6Oh/dW8OlDuPCmrPoIFhlg8x94QxXW8jrg7dCkFtf.'),
('lena_weimann','lena.weimann@hotmail.com','https://gravatar.com/avatar/4b1eec0d87f881d80a85532c8702521b','{bcrypt}$2a$10$wnfDfvxqHNecZGa4TBJ.TO5I2RykAfZq4jP1Qciz/hQOTIcxlce4q'),
('drew_franey','drew_franey89@gmail.com','https://gravatar.com/avatar/737adc8a02c3b5392e43270eeb97849d','{bcrypt}$2a$10$IqUFkrL.TT.rVWlqKEGeYunO1anuJr/SN9591K2HyfQcEAPjkEp7.'),
('rick_daniel','rick_daniel@hotmail.com','https://gravatar.com/avatar/a01e0dd3da8c32b4d3c70ae0437a8f76','{bcrypt}$2a$10$E0hF/FBYjm0qMYIVo8mQ0u6y7YRVgWjsih.sbDvW7WX0EkNkPIduC'),
('dale_will','dale36@hotmail.com','https://gravatar.com/avatar/87a8617fbaf424380a0fc292dbf98994','{bcrypt}$2a$10$.0uHCyvd8LMM3uTVghHvxOvuJbBOwUtbuMExiLpeBzlSZLYfiixt2');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('alison_lebsack','alison_lebsack@yahoo.com','https://gravatar.com/avatar/8f02db29d4b1c7a51ff0c9163f6ec8ec','{bcrypt}$2a$10$MRLJSXysCdr1INo8G4Cgo.sRlAu9UdgGtBJICMPO22d2XEUw3.VvW'),
('ray_hilll','ray35@yahoo.com','https://gravatar.com/avatar/18cbf236d766e206fdaafedde2052fd4','{bcrypt}$2a$10$AOEc8yaV8eVmtXIwprKUS.uDRbFoXHCWUfkb0rIKloPVcd.MQwGNi'),
('roberta_keebler','roberta_keebler43@gmail.com','https://gravatar.com/avatar/c162f4b09bd128fc3a677da2027a38e3','{bcrypt}$2a$10$Zuzfs50vUaLt823LYTvtieYjCvcI2JOz8v5G8k1CVx5oPA/mWwlkK'),
('shannon_kiehn','shannon.kiehn22@hotmail.com','https://gravatar.com/avatar/769363ef32006ad5c659b6ae39832a8a','{bcrypt}$2a$10$0X9GZO2k.V7immqbV9gluekem2Pvn95crw9hvrJsZpfC707dZFrmS'),
('ricardo_runolfsson','ricardo69@yahoo.com','https://gravatar.com/avatar/3d7be402f703dbf461f3670660271b26','{bcrypt}$2a$10$QowjoGM0pmBQvbVJJvSL0eh4NsM7ZbfUkauQae90ERC5denv7j9OW'),
('laurence_hahn','laurence.hahn10@yahoo.com','https://gravatar.com/avatar/979559ecc77f3a8f93a4e5dda4db14ef','{bcrypt}$2a$10$4ArGUY67Spn683MKRxk8H.dPq2F6/FhBDp7E0LQWumVylkSYNxJYm'),
('herman_gottlieb','herman.gottlieb39@hotmail.com','https://gravatar.com/avatar/051912308a49d5950c0322076918e4f9','{bcrypt}$2a$10$h5qCv9Y1AWg1rF9CNGyUeutHI7nCB03iPau9PYTfcANmuZiBLul02'),
('loretta_kunde','loretta30@gmail.com','https://gravatar.com/avatar/7303f26956d6aacd38a0902e2c132a38','{bcrypt}$2a$10$dsbhkxDoLxvoQV.GKSM3UeDsLIxDxcKIcKDbnRXk6JEZWykX7QkwG'),
('kristina_dare','kristina.dare@yahoo.com','https://gravatar.com/avatar/b658b6278360d96bed1ff4f224daaad2','{bcrypt}$2a$10$W3F6o0RSJWtE0Bskk4uJ7.mM2ZC.SINuwxQSpuMI5PTp1mT1cOWDK'),
('edward_morissette-dickinson','edward94@yahoo.com','https://gravatar.com/avatar/6d92b08b3cdb71d50f84dd496b890219','{bcrypt}$2a$10$Ac9CaETHJJDbVHjgzzD9ieWWInEiebmML0zgxM2vYPVftUckrb4QK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('alfred_hagenes','alfred.hagenes83@yahoo.com','https://gravatar.com/avatar/bf502e84ac4055186967b1754ccac4f6','{bcrypt}$2a$10$/p2fKkInK069RM.eLDtUnenM40MKnPChKdW8/x/PIEdE4iKHXSUMS'),
('bridget_marks','bridget63@gmail.com','https://gravatar.com/avatar/25e4e975442da46c9193b22752654128','{bcrypt}$2a$10$nJOULXQ7Zaqi6kgHezHBreuwBAA3IfqvPQbJbm5InS11fmEEfTmk2'),
('marcus_block','marcus54@yahoo.com','https://gravatar.com/avatar/68f48faf7a12e926e661b9e39dc4e330','{bcrypt}$2a$10$JwKW1dsQE6zxBMcMJFJLTOVgJysjEnW/KwQHZehOtgWy/cz45/tky'),
('carole_kshlerin','carole.kshlerin@gmail.com','https://gravatar.com/avatar/9fab371e9257852b7bb13ff4c3e50bbb','{bcrypt}$2a$10$u7lnIQY7RjviYDRtTAggB.CcV1t48gHetrjIBOkuVk3gN6.ODimom'),
('amelia_gulgowski','amelia.gulgowski@hotmail.com','https://gravatar.com/avatar/50106fe88b56c6482b3315e21bec30d3','{bcrypt}$2a$10$YYRm.gkXKNPPIao3X8fGi.WUuVbEs.BKYzV4hWRsgJT8W7JeX8Jwi'),
('dianna_effertz','dianna.effertz84@hotmail.com','https://gravatar.com/avatar/7f8c5dcf4c9639245913f9a7a2655805','{bcrypt}$2a$10$7ESmIpF0VHogbZBTCSDMLeBKbDQASqmvWCk5lTJ5m4YFX5YqCIzBS'),
('bert_weissnat','bert92@gmail.com','https://gravatar.com/avatar/923dd6e2a74df823c5fc5b1674c4f5b4','{bcrypt}$2a$10$srGz/ZvoGIkBR3jgegRjfOjcqZKf3Ef0qyBjIgViBe0G84ylsv7Fa'),
('cristina_bosco','cristina.bosco29@hotmail.com','https://gravatar.com/avatar/e5c602f60c123926484a93ae5190b69f','{bcrypt}$2a$10$rHBF75kyL1ChWrmy6LTTB.CC/f2ZFs6R0CqrGqB3eI9x/EuYprs26'),
('naomi_corkery','naomi_corkery52@gmail.com','https://gravatar.com/avatar/9404ee23e15c2ab59862abd80c67d2b8','{bcrypt}$2a$10$Bv6y4Cnrv1HlKb0zl27GDuTMfYHSsiNs/S0wQKUopGr/fikhovc1m'),
('lula_schimmel','lula19@yahoo.com','https://gravatar.com/avatar/5420e68117f78ad0430ca9fe5ae536a9','{bcrypt}$2a$10$PcQjlZdPE14Fa.q7opaiW.Vzs36VxvXJJpHLPzMcX8sN4AVBFU69C');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('kristopher_koepp','kristopher11@yahoo.com','https://gravatar.com/avatar/ed27abbdbf8392ec0abe1dcb879fe911','{bcrypt}$2a$10$Wb.KPiYUrHpYguGjvRTZHudp0qygAVHgTxY1lWs.UFjdd767CtsLO'),
('lonnie_bayer','lonnie.bayer@hotmail.com','https://gravatar.com/avatar/cca3be4c118881ce58245a8fbf60230f','{bcrypt}$2a$10$Wcd8A0gcvXSyltzdbZ6p.ebfaKWKkeyJpxxX74NZiT/qJGvjVsr0y'),
('dwight_hintz','dwight.hintz@yahoo.com','https://gravatar.com/avatar/a2ac79a14af93abea76e614105b0621e','{bcrypt}$2a$10$MahbGx6qOZt2ichPWvpW1OyebNtMb1u98sYouUmsdvOZcngEnazYK'),
('holly_zulauf','holly31@gmail.com','https://gravatar.com/avatar/df8a1c7c293172afd77a74f03c302095','{bcrypt}$2a$10$eUn6xCq0KfX8QXEoEwa7M.1HPAXVgwojj10lyi6cR4PkqRrq30yOG'),
('hattie_mclaughlin','hattie14@hotmail.com','https://gravatar.com/avatar/3f9ad1569d66cfc46fba51fad1d7dc74','{bcrypt}$2a$10$bT5VIOC9.yRpCPKFkUUwJeTSsVkCKpd7sJoTJOjDIDPu461TYjSBC'),
('santiago_green','santiago91@gmail.com','https://gravatar.com/avatar/6ce6d6f48183283e937af94f60e3e7b3','{bcrypt}$2a$10$cafUPv9XwdtgRUDC5huNeO2FhNCvpCmpNl5pNrirN.y/0oXHNznmy'),
('dolores_west','dolores.west28@hotmail.com','https://gravatar.com/avatar/afbf64d8e1041fec225e76259a882a1e','{bcrypt}$2a$10$qrovCDdmUo4Im677nBhf/.ijz80WHwut15uWzHSphsFPO3Qp9fFd6'),
('blanche_bogisich','blanche_bogisich69@hotmail.com','https://gravatar.com/avatar/72375d3a6d0f0bb7a0ba59e634bb5ddd','{bcrypt}$2a$10$DZBQSIgzpIjAnR.Vb/YN2eCfNeH6R3be.jD4yXeo34qZlO0IMQOA.'),
('adrian_dooley','adrian65@gmail.com','https://gravatar.com/avatar/8b18ea836516031171b756bf3e79bb66','{bcrypt}$2a$10$bHDHkPexzLDwtrKPHJrPOuAc5yrVMVBWNzTGun440jnQ.fbbHvFKy'),
('dominick_kuhn','dominick.kuhn@hotmail.com','https://gravatar.com/avatar/dfca6c54286bb61c6c365eb81dd06b30','{bcrypt}$2a$10$t21Ye44CseNbMYIqzjIvSuiyTL6xd6RiQIW.N2fQvm8plDEQFdy3G');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('hector_lemke','hector.lemke@yahoo.com','https://gravatar.com/avatar/29d1a190240a7d49b6002ecdd1d24239','{bcrypt}$2a$10$SzV5h1Ruqkf0YXQdibWlPuKgc4FCm.LyCs3kST9S.Bk2pcj6mnhYy'),
('irving_reynolds','irving30@yahoo.com','https://gravatar.com/avatar/087cec1611231f96e7b85b5d1d538556','{bcrypt}$2a$10$7mHGTFPF5xUgR9Ilrln4D.tI9Ub72qmww9v9txsWTr.21EKZIIxxS'),
('sandy_murray','sandy_murray@gmail.com','https://gravatar.com/avatar/4f591d161f2db9b49b94ae4831cd3208','{bcrypt}$2a$10$9Qp0nYaROqucuH9QzKD0lOXlGuxdR9Q/ddPsHmgsdY23dYqo5MYf6'),
('ira_schinner','ira_schinner@gmail.com','https://gravatar.com/avatar/a0e33eea7405389fdfd0c567ddcf213c','{bcrypt}$2a$10$s/d1SICVyxdBritMGKc1jO6fYEvZcsRWuaoJNrt0X5J9axMJW.nwy'),
('roland_wilkinson','roland_wilkinson@hotmail.com','https://gravatar.com/avatar/e1957f1dccd9a0cbb2f1c07acf3675c9','{bcrypt}$2a$10$d/aU6srADJ9RQf0nC8kETe3YAFDP3mlYSIiGTLvFte3KmvIs0IVwK'),
('dawn_marvin','dawn_marvin52@yahoo.com','https://gravatar.com/avatar/20125fc35bad76fb62af41375b8d4aa8','{bcrypt}$2a$10$LF/06f5sqwj1Pt3mPqBXTOB93TOeAFbwbA5ENATJWoPrp6q1f3L46'),
('kelli_blick','kelli97@yahoo.com','https://gravatar.com/avatar/00e15a5235a74ca8158b953b83c9d817','{bcrypt}$2a$10$uA15KmkJHerbd4evHg33vuzUg78O6j9kee4PZELsm7KlLPIdKdNi2'),
('dean_stiedemann','dean6@yahoo.com','https://gravatar.com/avatar/50b3aea2323ada009b8de97c675d1f44','{bcrypt}$2a$10$XvmKVK12vay945p5AzAt1uY6S3t0ITOf2/ly7qz0ox1Xy.sticVWm'),
('wilfred_hayes','wilfred.hayes@gmail.com','https://gravatar.com/avatar/bf30d2a035c6af0867770643e8a462b7','{bcrypt}$2a$10$Q7RYqt.B84iuYGS1SgTQGe5l1nvbRzaYSWCZ3q3r5pIDe46Ng5rmq'),
('manuel_stark','manuel85@hotmail.com','https://gravatar.com/avatar/569560466f728cedd5c2b2a08b7085bc','{bcrypt}$2a$10$GVaaNqbBWXNWYRV.FKFxf.x7xutgncSiSRuwkcR2IGO.5OPfqpphq');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('felix_lind-moen','felix_lind-moen96@hotmail.com','https://gravatar.com/avatar/5668c85137579727d4f3476d3d8184b0','{bcrypt}$2a$10$hqcjk/SnbQla3ZE5oM8gRe/8wyxiHtvU2iWWgF0uFmrEwl3Iv9fFi'),
('kenny_marquardt','kenny_marquardt@yahoo.com','https://gravatar.com/avatar/c3ede19568e2852d218c65b3f3077d2a','{bcrypt}$2a$10$vg8/bc8wRJGBtnfQRRsh/OKTcJAYbrTX0onsLaRgIDZnyP6iKDBli'),
('wendell_spinka','wendell.spinka96@gmail.com','https://gravatar.com/avatar/d5de7b8d2069bcbf23e8e6248530f2bb','{bcrypt}$2a$10$2we.y8N8wDk4s4LLX0TwZ.CMZfs3NPlDUom9os4p.lrXho3gIriYm'),
('gerard_morar','gerard_morar@gmail.com','https://gravatar.com/avatar/970cea7603002b70a417c69dc3944419','{bcrypt}$2a$10$Iprk2FXd2Bh6Khnp7i1GTuoXhywYsJ6taDqoEgeVldI6oxFXLL5Ny'),
('melissa_schneider','melissa.schneider@yahoo.com','https://gravatar.com/avatar/118553c526817293f8e060a1ad10fdd2','{bcrypt}$2a$10$a/aeEtkqkSXcK9z1f4Lk2uGmpaoXNMANQ4aASa66dpBYSN5Fpa5Tq'),
('cecilia_wisozk','cecilia_wisozk@hotmail.com','https://gravatar.com/avatar/c8bbc1c098e36644e47ae6fdee428f65','{bcrypt}$2a$10$4druyKrMxaT1jyieKTA0..4NBkBRhUnydwAgUG8uiKjTRqkjFPlzW'),
('johnnie_wolff','johnnie.wolff17@hotmail.com','https://gravatar.com/avatar/938d4602a0fb0e5299a1ee11c8c4c9f1','{bcrypt}$2a$10$NO8lsEe.MyhYUYzbeDwE6eWSKPN2Ki7kfdiPhzk4dmQ/K9A/Hxv0a'),
('virginia_wilkinson','virginia21@yahoo.com','https://gravatar.com/avatar/b5e089d5690ad919bcc785d77b8aece1','{bcrypt}$2a$10$BZG3ykcsmTWZBwuL1r.kBeO6IXITylp7j/nDNsxWuu1dGwg/Ukv76'),
('stuart_bashirian','stuart.bashirian@yahoo.com','https://gravatar.com/avatar/677ac3c1879ef499925eed1f7c872a73','{bcrypt}$2a$10$TRiKb45jeVEQM3I8hmz8Du.M2VEr2yq/A0aa0HTmzFnQTRVJ5hp/i'),
('ethel_franey','ethel.franey5@gmail.com','https://gravatar.com/avatar/08a7b0b3eb437869fcc3fe9195c6d6c0','{bcrypt}$2a$10$QZAAkY2tRLvLGc6kDbw94.hi8xx/yz8r8gOulMDdDSqjJwJXZLDAC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('daniel_tillman','daniel.tillman29@hotmail.com','https://gravatar.com/avatar/dcd32da8ec28811a6f254ca1c1124230','{bcrypt}$2a$10$uwZu7b8zkvVHIS8LxhwUKOo9EqtlGwZ.w.x8.4/kTBnkHGEVi9/MC'),
('fred_blanda','fred.blanda2@gmail.com','https://gravatar.com/avatar/2325de2f8391e7bc42e454ddeceda5bd','{bcrypt}$2a$10$DJfgx0Ljev7b3n39LF6Bfuh/zZu08wtg3YsFvkIBCzivnH8zoe0FK'),
('cathy_murray','cathy.murray21@gmail.com','https://gravatar.com/avatar/6dccce394abbc1b1bc663acf5da18baa','{bcrypt}$2a$10$fbkz0fS5BRSIbACW95HXz.Tf/TZp8.0sEp4C0ZE1qVXEqdnHKW44u'),
('angel_lemke','angel46@gmail.com','https://gravatar.com/avatar/5764103ab906e9aa8c01c878ea185ad3','{bcrypt}$2a$10$i64jWYetM9EMRatC7OfxJuUwfYVBf256NGKwIiwPJH6dhv9pnrd5C'),
('guillermo_terry','guillermo97@gmail.com','https://gravatar.com/avatar/aeb2cdae729ccda1ea54b329d27c88e9','{bcrypt}$2a$10$KBwRT48dDth5lvvmtbArrOYZ3RzV60f./E71wK0lgmz9sPikqZEf2'),
('saul_borer','saul5@gmail.com','https://gravatar.com/avatar/4112d63379f47ca390ff6068975d672b','{bcrypt}$2a$10$3Wj1i8TUCouLqjnf7.AbG.2TT11uDEduYx5vKKhY1VvSCpjWN22Ke'),
('luis_kozey','luis.kozey45@gmail.com','https://gravatar.com/avatar/0af1056d6e82c99b33b225e1e158d15e','{bcrypt}$2a$10$m0W4ZgcJX1FtBz4EKG4v5Okt5GyD32CUXtLAv3bDb5bSpFRNuWPyu'),
('terry_steuber','terry.steuber43@hotmail.com','https://gravatar.com/avatar/40a7d25cff8f5138cbe303f2477488f3','{bcrypt}$2a$10$LH.Cl3M3RGSd1oYZtwNjL.Ejvp9dW7NOQ82vXeb9m.l1oQFLUzA3q'),
('clifton_dubuque','clifton_dubuque@gmail.com','https://gravatar.com/avatar/b46ff2fe31cfed80f43d4812be250080','{bcrypt}$2a$10$2jqGP0rBYkEFLXiQCt5buev0A5E2Q10FD1S8WpRoIJVZ4RYJjNCCK'),
('dana_kris','dana.kris@gmail.com','https://gravatar.com/avatar/2c7c3f7c6145cda3c6560d78fd42b7fc','{bcrypt}$2a$10$SNue4j.fbV5dyFG2g04afexXlgOB5EF.8y7Vob5kf3Kp9WAShnfxC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('phillip_berge','phillip.berge34@hotmail.com','https://gravatar.com/avatar/95f4531236d43f8cc4fa608059e162e8','{bcrypt}$2a$10$e4/J8LMzaMmhDSTKwxSwueoznNxJm3tSGZuSbullLYcxxhUUCShga'),
('william_homenick','william.homenick@gmail.com','https://gravatar.com/avatar/00ff3b29bcea37be72a5af683f927a47','{bcrypt}$2a$10$E9RM9tmx26i/bhBGfdhfKOEbhjouHhxXR7ueML341Ew9a.8ChEGqC'),
('misty_treutel','misty_treutel@yahoo.com','https://gravatar.com/avatar/50d010ac3d77b3a519476112f28159c9','{bcrypt}$2a$10$r6navM6JGc1N3lhFsgzPROrbqosVVAjvQFkJ2vSD9eUH711icb6UO'),
('eugene_mosciski','eugene37@hotmail.com','https://gravatar.com/avatar/2aefbed0bdf0a5a055bb65fca88b04dc','{bcrypt}$2a$10$TOhqXYH/mQHBdmOIV/W5R.DokD7p5j8Vji.NKQmwbkr1re7JYgmcu'),
('wesley_o''conner','wesley.oconner17@gmail.com','https://gravatar.com/avatar/ccd8999fb078b4d5791b5372584553c3','{bcrypt}$2a$10$L4felK.BD73Ga/16jg7aqOxmVFUwOpNomXvdOdBMV64J5kVR7RQzC'),
('josephine_kuhn','josephine.kuhn35@hotmail.com','https://gravatar.com/avatar/590db59e7c59d3ba31484240f648ab41','{bcrypt}$2a$10$qDwQcUN/WnMAfiyOZL53g.SZ2SAeL62DQ49EbMR80XfViGGydUN7S'),
('christopher_mccullough','christopher0@gmail.com','https://gravatar.com/avatar/782f01a47e5c85d7f195a4492749ac2f','{bcrypt}$2a$10$i7uXouSR1JsICWZ5d/7OGux9g7ifLGB1JIynPO6vYd16769g.zD1y'),
('norman_blanda','norman.blanda10@gmail.com','https://gravatar.com/avatar/6747c058feb7f27d05920db005242b0a','{bcrypt}$2a$10$mgJ4Y6XCzn8ZEzpNyxogTO6yO6MdSTEKkcLeHOn2dkiAYotlYsgt2'),
('terry_hackett','terry.hackett@gmail.com','https://gravatar.com/avatar/4b5700632ba0d080cc633b8389ad2e1b','{bcrypt}$2a$10$iHbRsi6BBkhv18plJZdxOeLE2NB3tyhpVyH1Aosj38fwgQN6Yae36'),
('bridget_rippin','bridget72@yahoo.com','https://gravatar.com/avatar/da7620e5fb5e6636e7e96eaa1e193223','{bcrypt}$2a$10$ukyIyp4nccUbuH3.kPQ/P.wCQMx1x1SGI0vBFiEqelJv2Gm6YSK5m');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('lonnie_donnelly','lonnie_donnelly@yahoo.com','https://gravatar.com/avatar/f92712dfcc0bcd98d1ca48a920694814','{bcrypt}$2a$10$G56CAcU3ku40HkGOJfaSnu8wDWF/3GrLF.vP1LMyDp3sJ62ySeS5y'),
('reginald_cronin','reginald_cronin11@hotmail.com','https://gravatar.com/avatar/a4fdd93ccf0f6760042670f7c863b3fc','{bcrypt}$2a$10$Co3N0Qp2axss.FVoD6pd.OJH/k2k.Vuxfb5sy6MIc1kvuiJnqsxg.'),
('jeannette_koelpin','jeannette.koelpin@yahoo.com','https://gravatar.com/avatar/da568f52801304e5313e678d2e610dda','{bcrypt}$2a$10$ivCkPJx009wrE1N.tKwx5u.i5jhDGBpBBXe.tJ4JVv38nx82smi8u'),
('oliver_morar','oliver23@gmail.com','https://gravatar.com/avatar/7578f788869ca44733373a2b4184f702','{bcrypt}$2a$10$LnrAGRRGftAWHw.1.arWluAkIGjTq3rCk0DeJi/lDlb4DhbWK4zhO'),
('lauren_west','lauren.west72@hotmail.com','https://gravatar.com/avatar/7541f972e5858d8edd439754bc754b03','{bcrypt}$2a$10$kaR5qq7FcEM1CQ3rrD4NKOkdo79qk2d3epBDxbXa.49OmUSo.OeRK'),
('emmett_jerde','emmett_jerde2@hotmail.com','https://gravatar.com/avatar/1f229c9a8ef3ed507ed510da91de43da','{bcrypt}$2a$10$viTlCVLsXzmgHhZWgyhNXOGQrJlaaP3HGH.HZaC1u2tYDvLG/3aqi'),
('darla_christiansen','darla43@yahoo.com','https://gravatar.com/avatar/a0ade89b02c87f53f3dc3267f40d03f7','{bcrypt}$2a$10$QComuncuClAeEDGMKlNScedelM4jOLzeU82fo6OxtoRiN.OpVvXsK'),
('tony_treutel','tony.treutel@hotmail.com','https://gravatar.com/avatar/5345daffc78d58557c8c404310d65175','{bcrypt}$2a$10$ROmdfU54M8hrXo1qUzxLpOCLpzy4dJY2ga63fvnY9MufFkQCCnmTu'),
('lamar_zieme','lamar_zieme93@hotmail.com','https://gravatar.com/avatar/cf6722196efa7194816af116760b80f0','{bcrypt}$2a$10$TQKYGLosSE7WuaSsT7/vr.Zb1SIl56r8t1FhhTALNkJT.unpYlLma'),
('alan_ebert','alan2@yahoo.com','https://gravatar.com/avatar/b3fe07edb8c1bf7a8bc2d51c3d0733a9','{bcrypt}$2a$10$bgJ6yahB5ixsDbxLXK67peCSQ.toCMjHu3fivAJe6XgB4gxl6HmlS');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('jason_pfannerstill','jason.pfannerstill59@gmail.com','https://gravatar.com/avatar/99a2041b33d8d6282dbd2fd8273bb418','{bcrypt}$2a$10$DJg3FVxBMmoSTDQJHj2lBubUQ9DDFXgWZoLqMphY6GXerzrWyR2YW'),
('claudia_langosh','claudia.langosh@yahoo.com','https://gravatar.com/avatar/95a70674ad9e395247b5b56d3d3d02e7','{bcrypt}$2a$10$t4Q2us1nfq/CEmWBmKAQ7uHtdh2AUhUHmqJSFsYgu3xROHDohSSWm'),
('bonnie_wolff','bonnie.wolff@gmail.com','https://gravatar.com/avatar/db0d5aaa8bed901ffea9d9a0e7db8cc8','{bcrypt}$2a$10$td3qCV3zHDZGarfPiMK53uKefo095EYw3/kFqO/qmyw2LRK/RmOte'),
('roger_tremblay','roger_tremblay7@hotmail.com','https://gravatar.com/avatar/e7196c4b5216c7c4eba62b747810ad12','{bcrypt}$2a$10$RPZOBVkrvUHilyqpL2dA6euGJE05gimGrO/J1xQAFqdTxoz8DLQHm'),
('joanne_hahn','joanne81@hotmail.com','https://gravatar.com/avatar/b9f0768b2d2c412c33bd31c134f4e92e','{bcrypt}$2a$10$gMRVkmsFFEBjTUHh2clZAemDTvs9r5DSYv63VFRYc19nLKLtUWcVi'),
('dominic_schuppe','dominic68@hotmail.com','https://gravatar.com/avatar/17bdf2fd4ed594d44fd9e02630c90f59','{bcrypt}$2a$10$NZyBU8eWjBRNyI3d7hDjNecHA4DkGrltYy./FTw/9gvr657GB1IAK'),
('matthew_lowe','matthew.lowe15@gmail.com','https://gravatar.com/avatar/26d9f477e35df0775d0cba484e0376cb','{bcrypt}$2a$10$GXRwyTpiPdvL5KL0/k/zIO8lmn7U0z4nj9yqw2LpA5DimS.uOKhL6'),
('samantha_runolfsdottir','samantha5@gmail.com','https://gravatar.com/avatar/2f5064b91c6cb6253cce5496c6edc3e0','{bcrypt}$2a$10$QoaZyeUvAoNbm8E2Fq4ILuTfTixsBYQ6zQc4PhtwIhkbC3S1vHeiK'),
('dominick_hodkiewicz','dominick.hodkiewicz@yahoo.com','https://gravatar.com/avatar/88f5d5c811fbfb04b833526798bd4d33','{bcrypt}$2a$10$/F2Os7ToPAt96kDDjvjPmuODiXOioE/udtWN2wY7Y4ianuCMZSBUK'),
('beulah_schneider','beulah_schneider@yahoo.com','https://gravatar.com/avatar/d69622719a2cee31406b4746d88e0971','{bcrypt}$2a$10$kO5B/NiB.6XwrnkA5H4QseI.8vRTUo.JayJjzofzIP9TeXG81Aptm');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('april_stanton','april_stanton@yahoo.com','https://gravatar.com/avatar/6e73f2e3811b8ff14f22bee7688e1b08','{bcrypt}$2a$10$Q3KIRt1KarKTCIYIfaSbxOA9krMpUUdvHkbRclvXize8RRKBT7Ore'),
('joshua_berge','joshua_berge39@hotmail.com','https://gravatar.com/avatar/e7712bc0115a26c52c916d89024014d8','{bcrypt}$2a$10$Y5fSNlQpBzDV0ID2odI4J.nBbXzVkI9R4MpwEdSvYzx7cGcypfg9q'),
('samuel_kautzer','samuel.kautzer@hotmail.com','https://gravatar.com/avatar/6e994c12aab807c4bc4ebe3908c0d24f','{bcrypt}$2a$10$ryetF10YcpiHJ9MPnpfaHeRl.hrlLEA43aiLrLlwAoupmJw1HBEf.'),
('carrie_vonrueden','carrie.vonrueden@gmail.com','https://gravatar.com/avatar/35894f3f459a517e8cdb573473c728ce','{bcrypt}$2a$10$CvbKYobXXhe1o/6TdugLT.HeoGUCJjSLDhvR4eAtKT/P/3K1UUQPm'),
('bryant_kuhic','bryant_kuhic@yahoo.com','https://gravatar.com/avatar/e3c6fe6e098886cfa49ca2065d97bec3','{bcrypt}$2a$10$gt/f2ai/Tx2.stYOVjlc8eHzlRGLs5IeSz82PKm3GZ0wPr6oFpD1y'),
('constance_miller','constance_miller44@hotmail.com','https://gravatar.com/avatar/b94a86c2b9cbdee8a62398d9e0e1ee60','{bcrypt}$2a$10$eoavXWJnEFzi6emT9802sueHu5HHJjwGIirIW.WIpt0TcI5xm8nFy'),
('krista_dibbert-abshire','krista33@gmail.com','https://gravatar.com/avatar/d3018efbe5fb581703cf97c100137c41','{bcrypt}$2a$10$Wj7NdnimG152.wO5Ql0GpeAphYXUGAFU9MQxUX0mbi5bQClrEAyBm'),
('micheal_christiansen','micheal64@hotmail.com','https://gravatar.com/avatar/5aeacb0642f6e1ad2cbb2b3a502c66f2','{bcrypt}$2a$10$OQFI.M6t9q1YKrM3tckFbOqtXAlffhaQifErwFZNzR1EyfkpEmzza'),
('derrick_spinka','derrick78@gmail.com','https://gravatar.com/avatar/ff2a13af8de9f7f886c2ea40cb16b7f4','{bcrypt}$2a$10$IKVYjwPhab3D6aljVnUgsu5h/YPn9bnvfhFNjqkbHcvgwF90NXPne'),
('eloise_brekke','eloise_brekke@hotmail.com','https://gravatar.com/avatar/3f57f3f14741f48bd5ac26c8c6329735','{bcrypt}$2a$10$86RqM/lWu/KGwH830TR7nOCJD6PZdBijLejxIJz.EBbEoqc6SKysu');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('kayla_murazik','kayla.murazik@hotmail.com','https://gravatar.com/avatar/86cab05f670a2ad25249857f69d146f5','{bcrypt}$2a$10$MINL73405z3hWqlkCczs/ezGz.0Ou8Wfk7Z7FYfyA76MNui.K.Bmm'),
('nicolas_tillman','nicolas70@hotmail.com','https://gravatar.com/avatar/6a4d43e30e5cbf646fc3e9fa3fb43952','{bcrypt}$2a$10$RnhruewkRl/m//8bGdJILeyqv.pyYWjvTmv0RXwzIzg6cEwgZ9CcC'),
('laurie_nicolas','laurie.nicolas7@hotmail.com','https://gravatar.com/avatar/f83e93764dc20cf03511f4c9d7aedf76','{bcrypt}$2a$10$MpnT21oZe.zaMDGujZANA.SvD3mZbwDF19s1pPmjL.f1ZxNAxLG6y'),
('stella_kerluke','stella84@yahoo.com','https://gravatar.com/avatar/ffb9dbb38e53abd4ce293fc7cfe6d9d8','{bcrypt}$2a$10$a.PFxIB83cmVu16L.v/e6OvzFr.8VhS6TPVUn4040qXDxiuZE62LK'),
('keith_kshlerin','keith_kshlerin@hotmail.com','https://gravatar.com/avatar/33b3be30ef40e285f1c4d55cea879726','{bcrypt}$2a$10$w0bccIDvRnG3NjX87XT.eO2hivwN9qYyKTzx0ug5gU8F2wqzwsCPe'),
('joey_powlowski','joey14@hotmail.com','https://gravatar.com/avatar/a81692c50455d589a077f69f26012239','{bcrypt}$2a$10$Pp8Qgi49yKWJimkJFOAxp.c/f02gacMST8l79ZP1W6pMoqYuf.HIS'),
('lauren_nader','lauren.nader@hotmail.com','https://gravatar.com/avatar/bf40423c4e26a26f7afc74aa5fb5932d','{bcrypt}$2a$10$X9OF76hPQnGhpkfgGoBdt.Ce9f.sYFgWLgdnRTP7RzmZx7XdedRgO'),
('naomi_farrell','naomi_farrell@yahoo.com','https://gravatar.com/avatar/379e374b82f6f79c0533038abf4dc069','{bcrypt}$2a$10$ksC8pjGsx2CHVVPQNSlHs.bt5Rg6ZCpYqLcWODa6ifv54mRqxtlay'),
('ashley_harris','ashley_harris87@hotmail.com','https://gravatar.com/avatar/eca9207c3af7ad963de2aee751d6611e','{bcrypt}$2a$10$aVwfUVC2A8q8DkpB9Q1vKum/VshaEsvmTqEWIulM8MpqPbOQE.UNi'),
('mitchell_hayes','mitchell.hayes32@hotmail.com','https://gravatar.com/avatar/9c1bf8be5157819543886802cb67f125','{bcrypt}$2a$10$yG2tZTE9niQP77izdHwmse3qiTV4plISwKvJPJI4MZrMwSRi71RkO');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('santos_hermann','santos_hermann22@gmail.com','https://gravatar.com/avatar/942444802849e3ee36fd0393faedb4a8','{bcrypt}$2a$10$SrEq0PnU4/6xHPq5KHYqg.JI5LHJzqQcsQEFuCbCUkJr/MmTl1IAK'),
('eric_stoltenberg','eric_stoltenberg24@yahoo.com','https://gravatar.com/avatar/6adb93552ba66b34a5ec9bc825e6a1f9','{bcrypt}$2a$10$NGGV.YmXEEBXBJbgBakTGOiOUVInEcYjpUqYxtVuIHDoPE0zX97aG'),
('justin_shields','justin70@hotmail.com','https://gravatar.com/avatar/f8cb8da1678cadc2b811b68ecee6e719','{bcrypt}$2a$10$hrZJR5WjD.9DFq63mMBPqOsQjpV1Ud9x5v7jB64zXDZ1ixPYaNCrO'),
('terrance_ziemann','terrance97@yahoo.com','https://gravatar.com/avatar/9e9aa7ef68dfcd3a6276536c448bfe7c','{bcrypt}$2a$10$VePB1t/qk6.cZI6IRh5Sp.pVXeSkP/nRslHN9./JHTUSaF3FDrMU.'),
('ralph_franecki','ralph_franecki@yahoo.com','https://gravatar.com/avatar/203d62acdf202e4b2314e8c353ec8247','{bcrypt}$2a$10$bMZdGD3hqWWp4OUkNOg81O.K5RGsnBb3sapCsPmp0Lr/oqkF6DKNm'),
('ted_mosciski','ted0@hotmail.com','https://gravatar.com/avatar/73538fdec88d9c1bfdcec5bf94e076a3','{bcrypt}$2a$10$Rth3P080clAzLvcLTlVUbezRBGpj2TvKbW.PbPx98Uyzxroz2I8ee'),
('johnnie_ryan','johnnie33@yahoo.com','https://gravatar.com/avatar/4b28725c0745bf854edbdf3f7f01fdf8','{bcrypt}$2a$10$p4M4Q21bXsBJSRRWXXEMPexOjO0WKtxqwgTaxWlUG8YwnP8yjppXa'),
('earl_stiedemann','earl24@yahoo.com','https://gravatar.com/avatar/30c9e0c3f519754b21cddbc03f72db09','{bcrypt}$2a$10$q2t.t6Mr59zzvwsgPHRJhehAfxeIFtB2tMjZnvkVkKgTQ73YTlFta'),
('caroline_ondricka','caroline.ondricka@hotmail.com','https://gravatar.com/avatar/89c30e941486a727d007530db7405a8a','{bcrypt}$2a$10$y1OXjjQEuhln5DeXx.kY..ExB3uSM5mHVbuDZjz7jMNQOPJSk1S.m'),
('cynthia_ferry','cynthia_ferry36@yahoo.com','https://gravatar.com/avatar/c6bee6662947d34abb1540cb485b7d01','{bcrypt}$2a$10$iP.5NJ1Pe87cZ.UJ8ypaBOFKtS1rv2.Bbpb36U88jm.4dPoPB1W4y');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('cora_runolfsson','cora_runolfsson57@hotmail.com','https://gravatar.com/avatar/1dbcfc34f2e14ea7f8a721257dcb3091','{bcrypt}$2a$10$IbtA.wZsAHvyHUMwYTo63eYj24ZSOivanXjq9xZ2vdC9VGVDhJ7za'),
('lorene_auer','lorene16@gmail.com','https://gravatar.com/avatar/46ea948a316a64692d977f8c3f0a7310','{bcrypt}$2a$10$EzOaMG2VWr/JTpkFRGMonexOiSIuEJxNWq41Lh6.hrZbAjx6mSTz6'),
('joshua_tremblay','joshua.tremblay@gmail.com','https://gravatar.com/avatar/a63afc2c81b89ac53737db3596e926c3','{bcrypt}$2a$10$eKePxvuUgkRQRHUGvQIdcuG3SpEPfv6OAjvnvL4sDhLlpwh33X5uu'),
('meredith_murazik','meredith43@hotmail.com','https://gravatar.com/avatar/06a92928ffa9983d22d6881649fb7c22','{bcrypt}$2a$10$8S.Daf2oObpTT7NCvWPXkO2dPPuADZlxUrUujAqst7rR8i9ehZxn2'),
('anthony_walker','anthony_walker@gmail.com','https://gravatar.com/avatar/844ec259a3684b4b1c65636935b7891a','{bcrypt}$2a$10$h1IIeoH8hbT2qXjnXkzcvOWCStCWbwgudLliRGJFrGHAoIgbVPSFG'),
('darrel_stracke','darrel.stracke61@gmail.com','https://gravatar.com/avatar/678f68964ec85c19f94f9162c4803ed1','{bcrypt}$2a$10$CYlAanupa/j6i.FDBdCpr.pbhCMStT/FbNYQl7rsaFz.TreLFQ5fa'),
('viola_collier','viola.collier@hotmail.com','https://gravatar.com/avatar/8c3f89319f7379a0d819aa52f14ae661','{bcrypt}$2a$10$oY9dGfjsQT2zu/SHqdPemu2uf7tWgKlhvedFWiVF24tZNmZio96Bm'),
('grant_will','grant17@gmail.com','https://gravatar.com/avatar/6fab22dd756b6a9c3297bcbaad621d0a','{bcrypt}$2a$10$VXzN0dUfTi9CZrTzSpPAG.sn3QHLuhwOvGBvYATl8saiFQ15vs.ZG'),
('glen_altenwerth','glen.altenwerth@yahoo.com','https://gravatar.com/avatar/07f7f9998339c47e0b4c484b1786d283','{bcrypt}$2a$10$dj59iagWkMr8n8OQgslP0ubgY5D1JreOICAIHR68BktupxE1sNVIy'),
('boyd_franey','boyd61@yahoo.com','https://gravatar.com/avatar/50ea60fecceac7a2d7afbd7354bc5175','{bcrypt}$2a$10$C0a.mlbHh875dV3Ckgr8feosnqvUcQEBoPOz9Rq1IgbwGOwkx.4ly');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('kathy_kutch','kathy44@yahoo.com','https://gravatar.com/avatar/641306711be1fa910c9d807aa69f5813','{bcrypt}$2a$10$dNADUqyDRHwg/5N.yRqGl.4iJznOl3J7jWzxpBMU28MRwMqYrXiCq'),
('jonathon_wilkinson','jonathon19@gmail.com','https://gravatar.com/avatar/86c78fd663bd4444396ef0f87b94eee3','{bcrypt}$2a$10$Dnbaka5ykxN8onn0OwPlWOG8W5KNcgsGuukITCcy3OBBlVJyuDzE.'),
('becky_flatley','becky.flatley40@yahoo.com','https://gravatar.com/avatar/573c90643e62e05694a5ed30f3c2f54b','{bcrypt}$2a$10$NvqK9r0/Y3GwZU7aHRZ9Le8qQBDQKMuEgQMC9Belq.X3wBPdmum3e'),
('winifred_collins','winifred41@gmail.com','https://gravatar.com/avatar/65d33ee032854ca9f9c9c71d43d39ed8','{bcrypt}$2a$10$R7Wryi7ObYCXNMwuizkNzejsu3dgz/agzs.KQY.1wvW/DXOXZwMjW'),
('kim_carroll','kim_carroll68@gmail.com','https://gravatar.com/avatar/147b38b606716eadbe665a5b61aefa2d','{bcrypt}$2a$10$4ZF8JtNir7wClG.0HK7RjuqxSCzBIUF1I0tPGrgEMXK6Hj7beskTO'),
('brian_jast','brian.jast15@yahoo.com','https://gravatar.com/avatar/4079afe9c1f032f091fe0235068572d9','{bcrypt}$2a$10$CbeCoxinE1VuHgBHeDqY5..UtYrQvr4nDz6RELOAhdATdQeCXWFPq'),
('patty_renner','patty.renner@hotmail.com','https://gravatar.com/avatar/a5ab368908c8bd58e0df48c75f574156','{bcrypt}$2a$10$U5/uxHQpkLAqef8Nwuf9B.TwaS2tO9vDuftjPemkEQsLF/dvRN8sa'),
('vincent_leffler','vincent63@gmail.com','https://gravatar.com/avatar/5f657d4bc21339dbb972e3414c37c51e','{bcrypt}$2a$10$U7UNUzuY9O2n3Z1cA3zQdu2vZcegQ1Ekjfe39Nk89S6MnMID5fYbq'),
('helen_tillman','helen52@yahoo.com','https://gravatar.com/avatar/b3635ed60b7b2f44f322e49f262b93f6','{bcrypt}$2a$10$r2PIWLEYKH2X21VSWSGds.Jwg6YkJAXwagyOxzg6Thq14K0kJuQ.O'),
('jermaine_kozey','jermaine_kozey@hotmail.com','https://gravatar.com/avatar/89755ce0026fd3a26eb8ba7dbad84750','{bcrypt}$2a$10$NIroPTYGOZvT4rNuWFsQMOXEuC.2s6ayLGQfb87f3rE3ubB6HdB5i');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('joanne_o''conner','joanne_oconner73@hotmail.com','https://gravatar.com/avatar/e9a81e68d6edb2c9c801ed9890b3fd81','{bcrypt}$2a$10$.eylHW52rJPvOobMs4vu/ugpBaCQE/onTIc8gTiqpOJ.aLJqwfKhe'),
('lauren_torphy','lauren.torphy@yahoo.com','https://gravatar.com/avatar/965e443019a41e0e71555c06fc30703d','{bcrypt}$2a$10$bdOLg2uwV.urOCV9pCp1uOpvuDcmMu8XVUTSivA/9bhSISM/BOlNi'),
('herman_goyette','herman83@hotmail.com','https://gravatar.com/avatar/2333a40e9e8a896ac3e5b0c6dac91a82','{bcrypt}$2a$10$DU5A6qZaE8hhKzgw6JK8xeLvfXksPHQdcZs6p8ap15qzGOlqIjWLi'),
('edmund_bogan','edmund_bogan@yahoo.com','https://gravatar.com/avatar/ca7d7c999dfb50bef51c45b5f7ee4318','{bcrypt}$2a$10$oYFQv4lIKWXKl/ctlbX3ueScf12S57QLPrXJ0XIndDPR2Gdjw0QFe'),
('terri_russel','terri.russel70@hotmail.com','https://gravatar.com/avatar/34c8124856ec11c993d4c4a705edbf35','{bcrypt}$2a$10$AtzdRy7QzObz4PRNqR855eJ63EtprufECtqIy4N7XEgQZTI7WbWPK'),
('irvin_block','irvin71@gmail.com','https://gravatar.com/avatar/5971f79a26f8ce9de94b9f121fc2f673','{bcrypt}$2a$10$a6mOmOPTddGHk9fSD7x3C.2t6fyVbmiVuoHh2DKQhDyZPWiajPk52'),
('esther_franecki','esther90@hotmail.com','https://gravatar.com/avatar/83ddcab02b4c80bde1130cf9af36f1bc','{bcrypt}$2a$10$/M3.1SCKR3XiLCiA39AbV.6HB8yiAeUuCeZccbcdn5k3rN.RYK1eq'),
('juan_sauer','juan.sauer@gmail.com','https://gravatar.com/avatar/fd4bfae28c530153a5abdec0ad645434','{bcrypt}$2a$10$K4KodIB5wYtEziibniy0SuR5mtqtoxxYYullwNPN3iCOEBy/4Yy6W'),
('bennie_kirlin','bennie39@gmail.com','https://gravatar.com/avatar/613134facede6ffadd599389f5bee198','{bcrypt}$2a$10$WMX/WZfaINZaUJS9K6fsrOKakuhE6zQsvNSIwG/j9/H/00SZfzjwG'),
('elaine_rutherford','elaine29@yahoo.com','https://gravatar.com/avatar/60f3c82c01a8ff2317079d7b0e1dc0dd','{bcrypt}$2a$10$BNhqzqLVtNwkIaomr3eTgOLn7fZYiZZx1Rmr/OhMId/z.w5AzNji.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('hattie_olson','hattie_olson12@gmail.com','https://gravatar.com/avatar/79d3a7924d9b54d64e5b200b792df079','{bcrypt}$2a$10$yaWr5Vfw6A5LvmRXFaAVluMEgAZQy7QsVlC4TBOIv5/I/F0rjB2iO'),
('dorothy_green','dorothy.green35@gmail.com','https://gravatar.com/avatar/ad9a99ae9ab28f3188494d5812a0f6ae','{bcrypt}$2a$10$qpckbEYwXtL3UZPUmg8ziuaxSa6o2dXDalLsm.vKfRoAeyCPtzNzG'),
('casey_sauer','casey.sauer35@hotmail.com','https://gravatar.com/avatar/a4977bd460f5ec5bef6f946614aa68ce','{bcrypt}$2a$10$4Tt3eFlIXsl.swXqp8RycOz7YPY/zCEuFF2xHDbFZUqShuIw3IpsO'),
('flora_o''connell','flora3@gmail.com','https://gravatar.com/avatar/ef9e95f622050219afa1b2d98fe37691','{bcrypt}$2a$10$fBZ3QWkwluT6BeMIlo30jeKJkLRJ7rIf717mlfE/eWjw4eNJIMi0S'),
('isabel_robel','isabel.robel99@yahoo.com','https://gravatar.com/avatar/b9153c2c410b0e8064e3c374a46acf49','{bcrypt}$2a$10$GrK4wPmG3BM/BD9U6k4vsO22ztS/M7XZAa2U153pljiLhPIjgl.lq'),
('lillie_huels','lillie_huels1@yahoo.com','https://gravatar.com/avatar/80011ad12aa39c63e2f70af5971e38e2','{bcrypt}$2a$10$q68DkX.lhT9tP3zQsEC1m.LIQ22qSf1y6jQl8F2RriN3FPvOoksxO'),
('joyce_shanahan','joyce_shanahan@gmail.com','https://gravatar.com/avatar/f5311486401b8213408579f16a84b547','{bcrypt}$2a$10$bHxPyLnpVXRX6mQXlGTRUOqAGijvS.nna.fo5eaS1Sy/vdoYhaXqy'),
('monique_pagac','monique.pagac@gmail.com','https://gravatar.com/avatar/bb625649bea948f9ef4ac4f3b24f3598','{bcrypt}$2a$10$N9b3VfDiOIhKsMxVhJVSEuC9pVaN/hiMSqoiud1WTq1wmnIC0emC6'),
('carmen_rosenbaum','carmen.rosenbaum11@gmail.com','https://gravatar.com/avatar/32f04d278deb4c1c55c23f28da578ba4','{bcrypt}$2a$10$oqzbpYniPXe3KU4MWRdG4ehrf53VpPsRUJJM2gogA1LcHpw8sXqg.'),
('guadalupe_king','guadalupe_king47@gmail.com','https://gravatar.com/avatar/88737ab877ab5f2c9c17f4caf3173cd6','{bcrypt}$2a$10$QD0Ldo8PxlMtW6wG3kssouxuSKsU0HCMZ9hkFgbrWeWDFRwcWO.5a');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('calvin_harris','calvin15@yahoo.com','https://gravatar.com/avatar/ae4f0b333680b4a9c6854f2af5e3410a','{bcrypt}$2a$10$ZKdudWngJPBDB4yAQV/dQ.XSY0cDRcS6tKkVgOgR6nRJbiVj.dpKK'),
('albert_gleason','albert.gleason@gmail.com','https://gravatar.com/avatar/3ab978a798b534e338767e57b6cdcef0','{bcrypt}$2a$10$qlmF5b9v2xmeZF.FOcxBUOn92eGhubspdJR9/gaPKlhgGffHt9cYi'),
('chris_rolfson','chris.rolfson@gmail.com','https://gravatar.com/avatar/d340fad0d6d76b353ce1509852bb5b76','{bcrypt}$2a$10$nmzxFfc4jqtpWDw4qhT0oeZX9GHj1p4CXpLfzByJyGEZRTXHWLiKy'),
('corey_bradtke','corey.bradtke4@gmail.com','https://gravatar.com/avatar/3ece07732aa34f5f25dd49b665ef59ed','{bcrypt}$2a$10$tZpVhDeZ67fLSpn0oHR5TuFN6oUGpgPc.9TpRt6t7QwKma.6EhL96'),
('andres_wolff','andres.wolff@yahoo.com','https://gravatar.com/avatar/88047cee6c60afce5c1786a7dbf0cc58','{bcrypt}$2a$10$kvNJlB3FUtxJ9P4Cc8gSj.w9miFUYJVq6IU7BqGt4L9/zJom8VxTS'),
('william_parisian','william_parisian@gmail.com','https://gravatar.com/avatar/39d46bf72f85e01d0d315a6a6af2cc7a','{bcrypt}$2a$10$g7/4JJei0eg3we0B76ohWuq9d1JAQq.PwnmavIa9FreyojErl/4qy'),
('carla_corwin','carla.corwin35@hotmail.com','https://gravatar.com/avatar/5d860b2fabe74dafac1d4ebed2e8be12','{bcrypt}$2a$10$a2d0DdBC38Frldjh30dVNubgUsLjyP2E/ac5lH03WAbqPBygzIEdS'),
('kelly_block','kelly.block22@yahoo.com','https://gravatar.com/avatar/fa698046bc1f6d385065f89c38f5ed82','{bcrypt}$2a$10$fZg5Go.NbiA3OiELdFDrSeaiMfw8tSD8YLHvM.ndYAYN0yzn5HSNW'),
('phyllis_casper','phyllis.casper@hotmail.com','https://gravatar.com/avatar/133afa5146256d588442dfed3f991762','{bcrypt}$2a$10$7KM1A6fff03aq1nvaaMkQeOkfZHzZudFuSv.ZiX5gNT/kc8CNXiMa'),
('sally_hintz','sally_hintz39@yahoo.com','https://gravatar.com/avatar/1db87b85334d6f3b125d05313497d90d','{bcrypt}$2a$10$27yedvsmltVqtx9O6WDas.aF5kDSJFMsAmyVCW5wMewbHFhjBOeM.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('preston_lockman','preston89@gmail.com','https://gravatar.com/avatar/f84aecfa25cded36bf91dc1c8a4472a8','{bcrypt}$2a$10$SzzwnqZXasBVmUPH5pNdjuFryH5Y0fTrs8Y6LcB0Iy1yxxeBCFtyO'),
('leonard_kerluke','leonard65@gmail.com','https://gravatar.com/avatar/9bb0120227afcabd4799ffff20be5b13','{bcrypt}$2a$10$X4gkH84jS/siWCf4G7gDgOGI1CgUbXAn/l6B7QDCP442zgUImFEAi'),
('leon_hermann','leon.hermann6@hotmail.com','https://gravatar.com/avatar/c304e2dd2a0ccbc2c4c52153a224a966','{bcrypt}$2a$10$gpQYzNa.QA0h4rhmnMTVHuAT/fYxt9fOX6nIUFTLEXuny29AEya0.'),
('irvin_kub','irvin.kub@hotmail.com','https://gravatar.com/avatar/2b85ebe0211f485f2626e1100b591b4d','{bcrypt}$2a$10$gtD40axTf2LSQszhcl/QQuEQWN8VUP.fkEsrBK5711RqPKZsepMFO'),
('antonia_turcotte','antonia46@hotmail.com','https://gravatar.com/avatar/e4f2242e8be2d7d86be52df04f4d61c7','{bcrypt}$2a$10$dqJQGMUdbuutKshC8qcu.ejYEc5uewahPALvHMjq7yiC2A9sXd7Uq'),
('donnie_kulas','donnie_kulas@gmail.com','https://gravatar.com/avatar/7c72b5c0fac951c80c848d2917a6108f','{bcrypt}$2a$10$lhPQOL5jOopLkIg3MGL7V.okIH4JNIfVscXfhtWZxwdp6VodfV3C2'),
('phyllis_herzog','phyllis78@yahoo.com','https://gravatar.com/avatar/a57b94e3211318ad38483dd8de96c776','{bcrypt}$2a$10$zq93NDEqakm3bbDDrh4tAu0RWSFsYHUGicej2O4PekNFGOJQFNSMa'),
('elijah_kirlin','elijah.kirlin@yahoo.com','https://gravatar.com/avatar/e09b041f2a4b706a73b2e671cc3a6f26','{bcrypt}$2a$10$oAiV.OlN6cFqAKgp98HCJOFfeER9oqG84lXnHyc1Jmkg7ULgLeJ2i'),
('drew_jacobi','drew.jacobi78@gmail.com','https://gravatar.com/avatar/903523824ed405288fab10671a6a17ad','{bcrypt}$2a$10$cMQ/p60b/2fIQ35eJZTGauyD3RxWlyl3cdUt2ITbwouj9zBgCtQk.'),
('jerome_stroman','jerome23@hotmail.com','https://gravatar.com/avatar/5c6ce9a86c563d8a58a9950e24b71ae1','{bcrypt}$2a$10$RRe8R4APzT4r/dUPl8QKXes8jIHOKTH2jSyb/dvOyK1JmwtetPeBO');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('heather_bauch','heather_bauch27@yahoo.com','https://gravatar.com/avatar/4cec3063dd37d3368c140e28f3e98381','{bcrypt}$2a$10$NEtZJb/6lV6lgzj282bQPeAOetoWPFegA0fTsTAARgBDdCR4auOkS'),
('jessie_robel','jessie_robel@hotmail.com','https://gravatar.com/avatar/a2acefe63eb0feee174e4a504f131233','{bcrypt}$2a$10$cGs53GeNHTJZ4hzefr8tJ.3W2Bnc3hwuyzHaRX9AiBjFhsI2393/e'),
('lewis_vandervort','lewis_vandervort@yahoo.com','https://gravatar.com/avatar/4c7fce7ea4d7240cb160c60b19d6629e','{bcrypt}$2a$10$/0VDe8XDPuhqjZMitvRGXuzFsCmR4pqTP8vD3BphuTG7CJ5nllUKK'),
('jake_lebsack','jake36@gmail.com','https://gravatar.com/avatar/5d0d1db39ad57d4c21e9558822386bc6','{bcrypt}$2a$10$NO9YyYpTEwWhdk8foCRiHe5sbYnDf7oPVvcvMog1wDDlnCfw2FdvG'),
('judith_muller','judith.muller48@hotmail.com','https://gravatar.com/avatar/589cbe85d34e168fda74a38c0bb14f05','{bcrypt}$2a$10$AXTqfauOfL/mTx8KVSp4TO/mUPxzgAt2HE.oNpQnFILPxgDnzIMRC'),
('willie_bradtke','willie_bradtke@yahoo.com','https://gravatar.com/avatar/63cd642f0ef46d390b62dd36c02e5d04','{bcrypt}$2a$10$vNz4YF32hZBRZo3yHHZvzOI0VZbdbbS60VPFDJFqYgUV2lZcP5WKq'),
('mable_bartell','mable7@gmail.com','https://gravatar.com/avatar/440ed2eecebf932cbafe064ce346fbe7','{bcrypt}$2a$10$w3VdHnx9zVEAVC2X1Cs8P.ga9gFIvs6AKsnVXd.s0fzBjRpxq5F8m'),
('angelo_gulgowski','angelo.gulgowski86@hotmail.com','https://gravatar.com/avatar/ae68c283708820cdc74c1982833386f8','{bcrypt}$2a$10$Hj81w1GyuOmhGHZuv6gnWOhpIwj0EsOOVB0aCHgQcNMuZdQ5DSXIC'),
('dave_steuber','dave_steuber@hotmail.com','https://gravatar.com/avatar/396718f2f677ffe667ec4b68e68ba445','{bcrypt}$2a$10$Gx77QPqv1a.ifRb2CzcAkOImR2Oc2PVmrMNvtxtrUmhr5pv2CiuIy'),
('trevor_stroman','trevor_stroman@hotmail.com','https://gravatar.com/avatar/e7c9ce43f144deef84e79b6ce9e39850','{bcrypt}$2a$10$s1Yjckz8Xw.DnAlT7NUzROrxIM0qcNDqXtJ22eYk50UEIbU5azqkK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('june_roob','june_roob25@yahoo.com','https://gravatar.com/avatar/be2e21e7edd263c9da2e513383a59c86','{bcrypt}$2a$10$YfMOmrmXJ6AVHwCl3OdPZODYiU180zuOaYH4kZSp4rwqsfSCifP.q'),
('elijah_bosco','elijah_bosco7@hotmail.com','https://gravatar.com/avatar/93ada706a6703fda1e81a5357c8f97bf','{bcrypt}$2a$10$kW6Yvdg4qPbYkup4uimGZuu.C0TvfO0OwdXC0DlVEAsvIkkuwZhb2'),
('francisco_beer','francisco.beer25@yahoo.com','https://gravatar.com/avatar/5666c46e3e47e2afc39fc15f9139a7e2','{bcrypt}$2a$10$P2/.XE55eHwKQr8ndxT/LupNRHQjaYNly0AOHQPcdoZIFV4wFid0O'),
('darrell_wolff','darrell.wolff@gmail.com','https://gravatar.com/avatar/d336e809f1559428f910f37156bd0159','{bcrypt}$2a$10$TPp/dH5tcMJXmcMNUJP60egYU.Izqsx7T18xjzUO.5o3yT0Bwrreu'),
('jeremy_durgan','jeremy.durgan@gmail.com','https://gravatar.com/avatar/f137b663cb3c04de1e4e5059ed0fd182','{bcrypt}$2a$10$tBtV9ncuyVB5LUWrR1jBnO4vAtrV9BdpvQ.gmxNalxtb3FLHClHg.'),
('jimmy_cole','jimmy.cole@yahoo.com','https://gravatar.com/avatar/2030003e2a77e324776e362df9f5c171','{bcrypt}$2a$10$BaWq3vyWTW5Fsjtx8X8L3OTA30EX6RL2/qxvF1NdEB4tukCnwo.t2'),
('johnnie_turcotte','johnnie95@yahoo.com','https://gravatar.com/avatar/17171c489a509b5dc3d6a7de3cc7b821','{bcrypt}$2a$10$6NdhWDiKXJb79//8MXoMCenu5nvq0Q5Chl/Rp8s0.j5bKYtKYFQHe'),
('jesse_terry','jesse73@gmail.com','https://gravatar.com/avatar/cd8f825e48dda51a174fca6f537a0511','{bcrypt}$2a$10$QR4cVboM656a/khH84tdn.r4bqWobYHwUs0FCz5QYC3YwrxfQIFAy'),
('dewey_mante','dewey_mante58@gmail.com','https://gravatar.com/avatar/691596c556e98e78dbbbbdbc071968aa','{bcrypt}$2a$10$v3HuwlHG64oyJIcGUZJ9xuDs3RdhOhNhq71Tha8er0DL3RQcGNu5O'),
('lillie_hermiston','lillie.hermiston7@yahoo.com','https://gravatar.com/avatar/1dced8af5fb2c16032899272f4b1bd68','{bcrypt}$2a$10$dI5iUJeUT84yyMv.SfOeue5KT0WzJBWNrkaECIIdleZdWeiWlfndi');


INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('olivia_hyatt','olivia49@gmail.com','https://gravatar.com/avatar/e3a32f39e47a16ce384d2bf02a862d4b','{bcrypt}$2a$10$bwjHIx93YVd5TBBr6I2unedkvMUR1rbVkMpCQx/kEnJtfKgW5OJNW'),
('jo_pollich','jo.pollich63@gmail.com','https://gravatar.com/avatar/6f77f69db4ae6bbc19fba983de89ec31','{bcrypt}$2a$10$IxjX51Nikz9wptJdn0sfoeZcKkRpxqZA.EpcgPliapYwnLBlkurRm'),
('ollie_bins','ollie61@yahoo.com','https://gravatar.com/avatar/8bf271211ced630deb9b6180b67e879b','{bcrypt}$2a$10$N0aKTm8K8n6hpw9QSum37.S0AdxIn6gNE6Q2RzAaxdrykBbbaDUTy'),
('celia_kiehn','celia48@yahoo.com','https://gravatar.com/avatar/97b8f9eb88e0fce99fd0cb9268cd9cbf','{bcrypt}$2a$10$HQ9kcsBw.FmHaaAoISf7IOZ3J8VuBBpJlGQaPCNegdarifeNQ.Qpy'),
('george_o''keefe','george_okeefe@yahoo.com','https://gravatar.com/avatar/912489a4c8800d135b6d985b5a329de2','{bcrypt}$2a$10$ovLTNogg820UGBZrPzkeW.1oqkRUHDctnw68YaUFmRqVMuN01HWZe'),
('wilson_pfannerstill','wilson.pfannerstill4@yahoo.com','https://gravatar.com/avatar/6c2378fd0e33920faffc0d79bf2fd02c','{bcrypt}$2a$10$ZGEshyhnidcyh5t3EBCYGeuujKZfyICWWj62e1TvxtNDspwPqU8.6'),
('eloise_smitham','eloise_smitham8@yahoo.com','https://gravatar.com/avatar/33843c892aaa032e2e3495f4b90e03ce','{bcrypt}$2a$10$2G9DzgN83OoQa5gJbgT92..JrS6YU/pi19waqoS4i6eJoPdY9puHi'),
('enrique_baumbach','enrique.baumbach@yahoo.com','https://gravatar.com/avatar/de96600114bf7d34ce265e905dcb55c4','{bcrypt}$2a$10$cLRJM5f.4PXxzVg5P/LmJ.zGzxMWX9fnxuBVGQ9cqqBMZpCOew4Xq'),
('spencer_lynch','spencer27@hotmail.com','https://gravatar.com/avatar/0ee9eb75580c24cd490c5e22d45173af','{bcrypt}$2a$10$Gw6BiYoDq3/zSlVytVuJaudN2hUiX5YaQFoXaKiGZxb3tTMrX/9mu'),
('conrad_spencer','conrad59@yahoo.com','https://gravatar.com/avatar/85f01ceea56ed9394f2449a2c5c18063','{bcrypt}$2a$10$A7TUhqxSs6UL8CDuvFKdpO/vSKOq7o7gfHonAu4JQsM5oDl1e.naK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('jodi_cronin','jodi22@gmail.com','https://gravatar.com/avatar/7b75c87dd6346047295a9f94093c0f71','{bcrypt}$2a$10$RXLVz7bcfCl4I0voTlbQiemhdG6Ypgz7KOHcowiVu7F7F7jpjvDGW'),
('bobby_brakus','bobby_brakus@yahoo.com','https://gravatar.com/avatar/59b35c63e3a38e1db21d0d5596f73280','{bcrypt}$2a$10$ylC/9rCyAJ14YPtr2if4i.2umIfIlDUQpFlggZbiCKEcJ1BR/kGQS'),
('lorraine_yundt','lorraine.yundt70@yahoo.com','https://gravatar.com/avatar/08847ff8bb18257b95ad4682ca1dc49e','{bcrypt}$2a$10$e7KvZljG15kmIzvzMHEudOJhz1eDQlXaCAwBOobQvhCQIx0DLgr/a'),
('tommie_beahan','tommie.beahan@hotmail.com','https://gravatar.com/avatar/66193b788ce5a64f193fe2f14f475847','{bcrypt}$2a$10$41Co1g5PwwGdKVXlkCuinevMFnBpM5cgFPfckx8t6/fHp8DR7R8Zy'),
('roman_runolfsdottir','roman.runolfsdottir@yahoo.com','https://gravatar.com/avatar/166c67366ff5ebda141c75e41ec9040e','{bcrypt}$2a$10$TN5Fo85qXcQahEbpjh3lUeMhX9bNvNRmKT/FeupmegOr6NvIrr2wa'),
('sophie_hartmann','sophie.hartmann@yahoo.com','https://gravatar.com/avatar/408c00e08e1d7395b5ce5c1030a4e94f','{bcrypt}$2a$10$stt4.zHYBpXogZnnjuvvZ.6bGzDBAiKWn4h51qnKdB30qdGHfHffy'),
('derrick_torp','derrick7@yahoo.com','https://gravatar.com/avatar/d0112def5a39ccc4aee09aa4067067c1','{bcrypt}$2a$10$WCF1YET.hvFVLEud23MY.OHLkcf1qK9EnWbGCqVGfmkVqGHg.QV9u'),
('orville_brakus','orville63@hotmail.com','https://gravatar.com/avatar/03d5e1e01bd822bf9b9839fef397d6c4','{bcrypt}$2a$10$.DWTJjju7R/.GgjlBVGOneiKosFMjj1N3llRGNOGGT5zqxaKTgDAi'),
('javier_cremin','javier_cremin34@gmail.com','https://gravatar.com/avatar/88128a6f7bfa912e1e7b18e204fbc080','{bcrypt}$2a$10$sgAhvp6QWkXejwpwDfht3eSlDemsJS8ZFrnlitgLwXmbbZ/WeeBVS'),
('sergio_harber','sergio_harber@yahoo.com','https://gravatar.com/avatar/d44a08aca8a6e6bf753c1a18de1230d4','{bcrypt}$2a$10$KOPgy2vlj5ckCzCGwjUfcODfiQVgvpVb9sx7iSu/b8FKEbeTs1C2a');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('wayne_murphy','wayne.murphy23@yahoo.com','https://gravatar.com/avatar/058147b3a8bf42fe2300e4d879526327','{bcrypt}$2a$10$33GFJkBbhY5lFtKmPN50tuffVo2ZoLErhbaqUppDjRtTA5mja/eNm'),
('minnie_cartwright','minnie_cartwright57@yahoo.com','https://gravatar.com/avatar/d4306370570b9ab41e3d9ec632f0ff7d','{bcrypt}$2a$10$yWpBnOlf15Hoa5HTHoGyI.bh70ffNnaW9Pe3c1pk89t/l3So2zBp6'),
('latoya_feeney','latoya_feeney@yahoo.com','https://gravatar.com/avatar/cb39dddabd5de3702b5505c9b1c82ba4','{bcrypt}$2a$10$WPSIovAFEM0f/ZgStoz8Kezb6pjWVBpC6OSDOOVmGNb0Ld5sQb7pG'),
('miriam_rempel','miriam.rempel@yahoo.com','https://gravatar.com/avatar/6d19e8e5ef68509624d8fdebe3c8b5d8','{bcrypt}$2a$10$b43/A2ooYS0Jvl3t1hp4vuZgIefl637EE7lovmiwg4ZTzZh5SHDkO'),
('adrian_goldner-armstrong','adrian40@yahoo.com','https://gravatar.com/avatar/4c7894ec8fa4a77df3fc885957c46e1a','{bcrypt}$2a$10$eV6mb7sRznGR/r06wqaP/OWwDXl5o/55j88lE1M03Ck5eF7qInSYy'),
('kerry_quitzon','kerry.quitzon@gmail.com','https://gravatar.com/avatar/b6bc5297c6e6f36bd856de0b182694df','{bcrypt}$2a$10$pAtXY.1iOz9kmZSPx9qgmuMwQvtH.WWiGDiSKn.zAcNXYgiZLRNAu'),
('gretchen_adams','gretchen.adams@gmail.com','https://gravatar.com/avatar/1b5e76c2a151eb93dcb593da1518cb3e','{bcrypt}$2a$10$5.S2AjoEBi3ipufrKJUaP.K69lNcqzLN8yYV6q/3CPR8xuNghTmU2'),
('wilfred_blick','wilfred.blick@hotmail.com','https://gravatar.com/avatar/966c97dc53f5d581d2aba349d430a226','{bcrypt}$2a$10$B4KkmP6iZmH2kAEU1g.aKehhkXS8MC7SkVscxnmNLZWr5ZGHT5.1S'),
('sara_rice','sara_rice@gmail.com','https://gravatar.com/avatar/fb4ba32afcf86c605da46916fcdf5a6e','{bcrypt}$2a$10$eo8PP9zCO71oMwHaKusj5uERSu7QDcJqap33/lLCEjn9kp5lAr38u'),
('sean_howell','sean.howell@hotmail.com','https://gravatar.com/avatar/dd99a1c8503af0d80d067bf78c0fbace','{bcrypt}$2a$10$/DVF8d6pCukv/NEyS.8EcOko9r5TETUyh3ubkz46B1yj1D67a62X2');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('toby_dickens','toby.dickens42@yahoo.com','https://gravatar.com/avatar/9193f47cc907e63510f348746ff66548','{bcrypt}$2a$10$SAEIukJwlDa.ELwb1Mv4tO1uSeZIApdzO5Ak9xSLc/x476ylqV2Yu'),
('kristie_mccullough','kristie62@gmail.com','https://gravatar.com/avatar/f1f087e1b3b0150e2359d0b0c266934a','{bcrypt}$2a$10$7xI6pPhlK4KVGmcI8Z53/us/MtTQ.X7/B6eyY5FbpQwPkqKNCMqn6'),
('jimmie_smith','jimmie.smith@yahoo.com','https://gravatar.com/avatar/dc5205a4026e759a6fe7c5c692d98402','{bcrypt}$2a$10$l0VLGcpwrber60kMhyW9TezE1iIWOkTXeq.zF1/owKbToccj/CHeG'),
('kathryn_von','kathryn_von@yahoo.com','https://gravatar.com/avatar/81efa61e04846ba4c209b17b0b2beb60','{bcrypt}$2a$10$xu0K7M0xwsCdhUL0BCGPf.nEbHIWfQ.RV8/HghBsYt1guMuqmbbZ.'),
('wallace_jacobson','wallace_jacobson@gmail.com','https://gravatar.com/avatar/5dd00460ea6b9b53d9ad59ec42238ec5','{bcrypt}$2a$10$bNmRNA7KN1TBe7Ked5zH/e9Sz4h4tBU/MDRMASDzY0mO1Kzvb3rsK'),
('noel_armstrong','noel22@hotmail.com','https://gravatar.com/avatar/3a56e4206bc0fb2c3326b47aaffb3c97','{bcrypt}$2a$10$wSt5BhOffmbiGou5V3VmbeUOPGLKWoirXL9xa90gfa7CbuT7Lc50e'),
('pete_schowalter','pete39@yahoo.com','https://gravatar.com/avatar/d45881dc5eda0ee2166e728dbf0fa898','{bcrypt}$2a$10$OOw2irvhh2cZva/H70IbfO2KSjrF0LSkUXSJEaqFaus0C3GH.5zny'),
('tyler_dicki','tyler62@hotmail.com','https://gravatar.com/avatar/3503be43e0cab9c408e2c7bf20f04564','{bcrypt}$2a$10$sgmuVqyjUqfbgxPV87ot1evbumlM0sR.l6kOMUCNacU9AeXt9W61u'),
('nelson_murazik','nelson45@yahoo.com','https://gravatar.com/avatar/fcc343ce2564815ad752fcc36f74977d','{bcrypt}$2a$10$tcmQadDdVTBYW1Lxr1hn5.IJeIwHasn15oiWNQj2HVHb3FePN5JEi'),
('brenda_weber','brenda.weber@yahoo.com','https://gravatar.com/avatar/c9630efd423637b1689c30c745f512d5','{bcrypt}$2a$10$g7QdGUA2Vmu0Woc3TKk2IuWoLRvr0tfWGMOCAVRvvMk4sCQkfQRme');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('gustavo_koepp','gustavo_koepp@yahoo.com','https://gravatar.com/avatar/5eb9ef9bac451e1042d65b84b90f8799','{bcrypt}$2a$10$kAW7BNpqIoxZv5HAx8ptuO93dN2kY4t0jxmmqMP8xojq5yH4sd7NW'),
('jermaine_beahan','jermaine.beahan35@hotmail.com','https://gravatar.com/avatar/1dd8f1145ed2ca11b006653c14283799','{bcrypt}$2a$10$JHP67DOF0Lzx53GS4ZtvF.aDvTylcSaPbdzmLYRzrrTz.Uv7qaY2u'),
('tricia_miller','tricia13@hotmail.com','https://gravatar.com/avatar/3e323c6ca44711325dfe92d477025de1','{bcrypt}$2a$10$8aLKnF4Vygk.GLHGH/UqpO40V8o.vhOzgKVc04f/iIj2kOfvmw.9S'),
('moses_schmeler','moses19@yahoo.com','https://gravatar.com/avatar/ab4a7a6f7bab660bb214d6c24cd7ea61','{bcrypt}$2a$10$o1B02C9v5eXkm3Dd/wRzGOaeiDo5tQhAcqHwjFOZGOc/F6YZlOkHW'),
('bradford_goodwin','bradford.goodwin93@gmail.com','https://gravatar.com/avatar/c2c7ec41966b295562f858310859e5d6','{bcrypt}$2a$10$GEqsEAhH2A89hZI0d8ci3.HkGZvcuZC4aiBJIdm29/JG1eGncJEDe'),
('jordan_simonis','jordan_simonis38@hotmail.com','https://gravatar.com/avatar/eb13c7db2a705fac2152bf589638d567','{bcrypt}$2a$10$5NRc..BCRXIWOwXeReXivetwXcDkQXYlxcmfO1IB.ahGoW4Kpf/si'),
('stella_schroeder','stella.schroeder55@gmail.com','https://gravatar.com/avatar/708a066614f585bcfbae91ff06c7749b','{bcrypt}$2a$10$KK84mGS1r9g65h043OTCkOyB46iU4m80E.fpTsDTnn.O6EnQ6tHnK'),
('alison_wisoky','alison.wisoky@gmail.com','https://gravatar.com/avatar/c0d020363227c239ce52a00e11e891f7','{bcrypt}$2a$10$NNe1ak7F./5Kpiqw9FtRnu85ROULEHMPNKb1ho.JkeSaeIUWJxyoa'),
('edgar_schmidt','edgar_schmidt@hotmail.com','https://gravatar.com/avatar/3436718f2049c61f8e754e270a32c663','{bcrypt}$2a$10$GAnuOhJzefoX2UIcVIfnj.oAwJg/Z4rHQiJl1wE/xgOuCMoLKk4Im'),
('chad_farrell','chad96@yahoo.com','https://gravatar.com/avatar/931b3d9f9383878b8da28f5289437a67','{bcrypt}$2a$10$LsmnTLmqYm88hpSbAyb4TekcBU/31NGVW7a1Xs0aP3x0mRStFTmDa');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('kate_willms','kate.willms@gmail.com','https://gravatar.com/avatar/cbb3b912ae063d5ec860c49ade9f51cd','{bcrypt}$2a$10$dm57l3/fd7VFil20Ht3ExeuspBE29LgFm8EZMSz0E0Jotxwc4PcGu'),
('neal_rice','neal89@hotmail.com','https://gravatar.com/avatar/f05efd67ef6a8c892042ac19199caf28','{bcrypt}$2a$10$9JLDEKmegtk8203B6WJ59OCaY6IqVoNDll2OleYD9REkoLJfMIg5.'),
('peter_pollich','peter31@gmail.com','https://gravatar.com/avatar/8beca5bb84fe0236773de4bf94cef924','{bcrypt}$2a$10$vo3iqheD0RttpkensFnEHetBuhPPRly80sWHz2jMVnaYGLlcqcvoi'),
('paulette_keeling','paulette_keeling93@yahoo.com','https://gravatar.com/avatar/802693312ac922052f031d9ebf536e2f','{bcrypt}$2a$10$ja1YcOyBo..hgs/y8UMOZOPOFuhwAn/jYqqRi.jl40yCsCGxkzQIW'),
('maryann_franecki','maryann.franecki12@hotmail.com','https://gravatar.com/avatar/dd211efdc2715a8341c081194ecd8353','{bcrypt}$2a$10$Y7hutQhuCAmRZA0EDghSuuQ9Th/KjpbEzb4eqvF6ZriVlT8eRRoVO'),
('eric_wisoky','eric.wisoky@gmail.com','https://gravatar.com/avatar/deb603ee26aac128887973c2ae351a66','{bcrypt}$2a$10$.Qk6f7b0n6uUBE85RBUT.u5Pe/1a7R5uz3avaFYapT/vcSQ.9MDP6'),
('gerald_green-hirthe','gerald_green-hirthe@yahoo.com','https://gravatar.com/avatar/7e232d2b77a53d98db82d9112656a84b','{bcrypt}$2a$10$87xAwV.Ehvt6ziGXri9v6OQUylZfs8wmr53bj3JBxqd/W5DLZoUJW'),
('jake_douglas','jake20@hotmail.com','https://gravatar.com/avatar/002792e7eb32acd5feb356bcd5bbd260','{bcrypt}$2a$10$IwtYZNrQMnDD3eeRpTfIgOc/t5.n/D70aBsYn2Ysk0XQGs.cATjcG'),
('carlton_osinski','carlton_osinski@yahoo.com','https://gravatar.com/avatar/af69741c4bde566fb3b7cf778ea81045','{bcrypt}$2a$10$gUyZu0DL/VMlzoAbz9RmSOQvdmB.YgVxrKTiiQPOwdmiSR/HVgsMq'),
('gloria_nolan','gloria.nolan72@yahoo.com','https://gravatar.com/avatar/aec013ea119f924efcfcdb474125d045','{bcrypt}$2a$10$B8mswcLCFg6nXk//3cLjeuf1Ls7ZoznqVE3q6V6c6.Vday7sKVxqi');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('elvira_legros','elvira33@gmail.com','https://gravatar.com/avatar/cc3da5a9fd707f08c4c12313f334dcfa','{bcrypt}$2a$10$8of7tFly2aEruuixY8uh7eJC8vhb5QWp.TEJq2Tr/QIR6BwngxB86'),
('lawrence_mcclure','lawrence.mcclure@hotmail.com','https://gravatar.com/avatar/7e4cd2591590001d4e13ea230f6087ea','{bcrypt}$2a$10$1qM3u.sjt5GnFE3N.T2cl.iLhqsdc5WlRMerU006tIMXwnQOpOwMK'),
('beatrice_lowe','beatrice_lowe@hotmail.com','https://gravatar.com/avatar/b2372a952abb858ccd07ba9f0ea6d64f','{bcrypt}$2a$10$VmbGDhA/RpNvGfM6tNlI6./lQ1a6APgWJws7H6vPp5/IGo77Gtr1m'),
('doyle_romaguera','doyle_romaguera67@hotmail.com','https://gravatar.com/avatar/2984f0e72c687be65ad6d8f7465c377c','{bcrypt}$2a$10$ufksFc992cuFjy6vgL9d5Own7Vnai4cD5qUO7sPhCL04JYSdE2TXC'),
('lynda_wilkinson','lynda66@gmail.com','https://gravatar.com/avatar/aa09ca0542673936daf07cdf680fb41d','{bcrypt}$2a$10$DwqoyPtM40W6ko6poFosl.4E8ltbL4mDC9Vt5ipMVh/zXJtHtDwc6'),
('katherine_anderson','katherine_anderson@gmail.com','https://gravatar.com/avatar/2b304d2786ffc498b1b054da0b02eedf','{bcrypt}$2a$10$R8SqCKy90tvoQHWleUyaPOb7/J9ieyaPv4cAD0Ic/CE9M5hUd6jwm'),
('lorraine_dickinson','lorraine34@hotmail.com','https://gravatar.com/avatar/7e37dbefa075a2678aac877e91b22aa8','{bcrypt}$2a$10$zTTVOzELPuMIKeXyQabH8OvPJnBHctIm6aUTDvkIfZpTeX7M8Zlfq'),
('philip_barton-sauer','philip_barton-sauer@gmail.com','https://gravatar.com/avatar/35cfe89fa465228be9bca4f1d6faffc3','{bcrypt}$2a$10$RFy/vUhPFSU.Dh2Pvh.vMOrxb/eBEbv.cMuS8t4JiFVt9gkag9CJm'),
('carole_kris','carole.kris@gmail.com','https://gravatar.com/avatar/96610594caa2907b302ea7a9cb5996ec','{bcrypt}$2a$10$hi7NuamkndjHCRbHf0CGqOW/WoxttDGbsqRA3dsjgq5L49poDw226'),
('jamie_koelpin','jamie_koelpin77@gmail.com','https://gravatar.com/avatar/4f881ef88c9c80bb7ebfe657574e8947','{bcrypt}$2a$10$t/JPOcwIOqlL0WKvJtYRZeTpWxI8oGBKNeQDcN8q4e0DRAosCN6IC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('delores_bruen','delores.bruen36@gmail.com','https://gravatar.com/avatar/e61356e405a19c714923b0ca0ea7a183','{bcrypt}$2a$10$UvqJeHxWEESqmrA4LI7ujuC1D/6M49spmiWOOksGeg2e6Y9B290FC'),
('holly_o''keefe','holly.okeefe@hotmail.com','https://gravatar.com/avatar/9ad4a89044cfee354c1ef7256632439b','{bcrypt}$2a$10$23Xa2a1muzj5KagaLC9gGekbOOuuPNsj76cdkZqc7OgTOjYVgmche'),
('evan_rutherford','evan73@gmail.com','https://gravatar.com/avatar/359555c4429069a30d45ea0e5d6edf31','{bcrypt}$2a$10$uTBF3w0PXNQ0CpuC3kRAPulabUwHCwr1GnVwOrBQK/9wPgAhvjOqW'),
('ira_hickle','ira_hickle19@gmail.com','https://gravatar.com/avatar/085eb68092ef59fc27ac1715be1474e8','{bcrypt}$2a$10$qKvZvV5fL.bPT.YkOKYo4OWbBGT.5WZJbkNwnbftscLM0M7i0JT8S'),
('garry_lakin','garry_lakin@gmail.com','https://gravatar.com/avatar/b39d21f36e85789b4676acab2a671112','{bcrypt}$2a$10$BPDWxjdP9uDnWpQdWRv90.eMrMIGpMdXDoAfrVOxtM2MbCxDENyym'),
('ramiro_turner','ramiro_turner@hotmail.com','https://gravatar.com/avatar/9f9857a561f646c3fbaec5b198175503','{bcrypt}$2a$10$5pw.DGX5TJ4C9n9ZVpmsO.VhJbINYiOvySqzxBu29UicM4cpeRs7a'),
('sandy_prohaska','sandy20@hotmail.com','https://gravatar.com/avatar/020c6f8d5b6d272e1d3243a8f47ae172','{bcrypt}$2a$10$CkGe2qhozrB2lX9cpi8vxuSmqFrjEveqCp8Tumi40Z9H4PW0DiJjG'),
('seth_pouros','seth94@gmail.com','https://gravatar.com/avatar/d871ab0ddae122bf699b4e0fbec2a2df','{bcrypt}$2a$10$eGeEtGvLovomGwYhXhq2YuUP/LVWG.ZvLSQbLQV9ldtoMR1EzQ.rO'),
('harriet_spinka','harriet14@yahoo.com','https://gravatar.com/avatar/bf04b505aee521d965ade818c56dac80','{bcrypt}$2a$10$EdvnRAH/yJ37bqhWS3xxK.H5sldwEUHQJcvwkCQCm28Azxypch4OW'),
('melinda_yundt','melinda_yundt30@gmail.com','https://gravatar.com/avatar/06a13e809176eaaebfbf53261c0eca1e','{bcrypt}$2a$10$0iUwAlXo1VMgKRItgPS0re16rU8.TYTlnDJ/4r99rUQYbKDMCJpMu');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('joseph_moore','joseph.moore@hotmail.com','https://gravatar.com/avatar/c41715774455f524a6c6e170f6dfde24','{bcrypt}$2a$10$FpSppr1VZfYOUoZsBtJ5OutCYdNOpgiC/X/qdpJ7Tv91ToQi.pqp.'),
('sammy_keebler-brekke','sammy_keebler-brekke@gmail.com','https://gravatar.com/avatar/623529e3ddae1a86b3cc7abb5fcbae13','{bcrypt}$2a$10$cA5fsM0vANXHIJtQoIi6luOwPNBO.JVDIoRrZnRukf86AtUqtAJNq'),
('rosemarie_mohr','rosemarie_mohr87@gmail.com','https://gravatar.com/avatar/4f111c4858c864d2612d6eea408335eb','{bcrypt}$2a$10$bKtjBUP2VSHMX8bKG30MzufdaWD.fnJURk0FR78eV7O.9/3SY.3QS'),
('wallace_mcclure','wallace_mcclure@gmail.com','https://gravatar.com/avatar/2bdb6c172965169712c532fc445b01bd','{bcrypt}$2a$10$yk3I5aY2vwtdLbIlvNgKmuJKDe60Y34rHt/UexeqN.eD11VV3jE.m'),
('tracy_tillman','tracy88@yahoo.com','https://gravatar.com/avatar/fb7b3fb833b5b7be62015c6045b6eabf','{bcrypt}$2a$10$FU/zuoHArp1S2Y5UdYNcAOMY6742sZQ0pGx7J8s4v4URgd32M1dOO'),
('mona_kuhic','mona.kuhic97@yahoo.com','https://gravatar.com/avatar/7572fa45244e6db0647f84142dcac134','{bcrypt}$2a$10$KfqWm3RE1QPAY8bsoDyDn.pVkdY1Ub3.IsbzYpPcU93tpd5blhe1m'),
('virgil_aufderhar','virgil.aufderhar73@hotmail.com','https://gravatar.com/avatar/2eaf5933f0e171252137683eb00d53f7','{bcrypt}$2a$10$xjtjEkfpahL1hVGfELLGhO5zfxnh4yxkTOIbJJ.6j1C9DPaMJMaAG'),
('neal_wolf','neal84@hotmail.com','https://gravatar.com/avatar/a4371215310879b60828e97d606f3d98','{bcrypt}$2a$10$nm7cCS681I8WfbTMPrzahea6zL3r/PEG6B73DQJ/ZS9kfHqnCQDoy'),
('joanna_herman','joanna_herman@gmail.com','https://gravatar.com/avatar/5f61ae2135e44190ed57337c24deeee7','{bcrypt}$2a$10$.yn6DtPmcnEOqZGKkdbgX.zjQeKQYtaJ4HhJPweefmdzz2GNOMAqy'),
('lula_windler','lula_windler@hotmail.com','https://gravatar.com/avatar/86196e3568d61c660fe760770777887c','{bcrypt}$2a$10$ac19Hq.gU/w0HEoF.AjwAOI2St9eGoBF/Q7rhVXslNMW3NfdQCUGC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('horace_goldner','horace_goldner@gmail.com','https://gravatar.com/avatar/7141da20437b260eaa90fe801dae25f3','{bcrypt}$2a$10$WwU5kFqtaopg5hS8GQrYq.OQDQmCv42TIWwWgvF.YCnlMQUdTrsXq'),
('carol_windler','carol_windler51@yahoo.com','https://gravatar.com/avatar/58817aa29a02d213af5fe0ce60007eba','{bcrypt}$2a$10$xIArR3vc8LQ8Gdg.tUKk7.tW1eH1m/AvVCL6oZ1Dogyh4FKswZS.i'),
('doug_roob','doug40@gmail.com','https://gravatar.com/avatar/da4ec44acebcb46874ba62178a9d8056','{bcrypt}$2a$10$XS/3lPQtRZgD2ySnXIHATetrwZmO7nxIferBcXLs7GDEkqju7G4s.'),
('victoria_cummings','victoria.cummings38@gmail.com','https://gravatar.com/avatar/8534eca0c636315f8c2ef4d62ef2cad7','{bcrypt}$2a$10$eiaOmcvn5bzrwxWY.IgZ..4akpNpj4XK9O4S412.rL51EbkLdv2PO'),
('faye_gislason','faye_gislason74@yahoo.com','https://gravatar.com/avatar/d0d3941053009049c998ef084092a496','{bcrypt}$2a$10$EumigUIcKVPgjlmikYoWjuNVZGu4QP9PNatybmZQXsR4WffiOD9Ea'),
('lewis_smith','lewis.smith63@yahoo.com','https://gravatar.com/avatar/688e85125b3e2e2265de8cd8e775c33a','{bcrypt}$2a$10$/IbI7qwqDdYrbSM29H3rLeITxxf76Yhdoa9RcWmVjnxFn.tL551KC'),
('paul_shields','paul47@hotmail.com','https://gravatar.com/avatar/014c5ded07ac50eb5fc0630a492ac4c0','{bcrypt}$2a$10$eOHa.JKt1nZgDXg4DdoLTOLEOrSgmsEnu7fHoJ.odMJerTSqrbMje'),
('fred_lind','fred_lind@gmail.com','https://gravatar.com/avatar/d28d80481a23266f1c86a10195361319','{bcrypt}$2a$10$Zej3pNB0ZINiA9jiR7nHFOe55PkCOjYjFpLmqpQwQQYRxJrukm/Ym'),
('ethel_glover','ethel_glover@gmail.com','https://gravatar.com/avatar/c12a6b72272e9866366c92e5013b9e2d','{bcrypt}$2a$10$P6LcDfD.YdsUMLQQqLTtJ.tv82N1o2c.OysWQTQ7ItTP/lJiKGQ0S'),
('roosevelt_cormier','roosevelt_cormier@hotmail.com','https://gravatar.com/avatar/56119a3171f9cbb234e8c10bca5ab4d2','{bcrypt}$2a$10$orO3J1IFOUplkh2GFInt7ebpsbJlTUwVYrtR7Esw2wgL8FwTwI.ci');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('kelley_hettinger','kelley_hettinger28@gmail.com','https://gravatar.com/avatar/72c75580d35a0897cc51dfd472478dff','{bcrypt}$2a$10$juebH84WkOQIWr3Oi4aSauOWMp40T0JZagT5kcTbjs5sLHHBp3Lta'),
('penny_greenfelder','penny_greenfelder30@gmail.com','https://gravatar.com/avatar/787abe9f30bbccf03121ec757cc0e638','{bcrypt}$2a$10$F1Sm8RUwfmSaYVHsO6ygYeBViebJjXy9T/SgPQ6Qak0PTJjDcrP5W'),
('armando_gleason','armando98@yahoo.com','https://gravatar.com/avatar/54c3b942716b13d60b0b8585078eb008','{bcrypt}$2a$10$VoTr/quQaFqUYeFM8yQwjuMk1wGstZp0U9JlqjzchiSx3rnIxAyb6'),
('wesley_waters','wesley_waters16@hotmail.com','https://gravatar.com/avatar/97632171090c7b55d6ab9d899df5fe32','{bcrypt}$2a$10$6YLrpbM.m5IzmdPy68t/TeNW3i3IsQUnRVt8Ae.lbF0mDJT0NH6EO'),
('jody_nienow','jody35@hotmail.com','https://gravatar.com/avatar/0bde0b39422502e24cedee3cf4b14bf8','{bcrypt}$2a$10$EH8oXankFC0QfMg9H4EaSu8VpNALL/Ttj9pl7dGFiNzL5uQgyi5Zm'),
('carrie_moen','carrie21@hotmail.com','https://gravatar.com/avatar/a36c117e98f8173e42e1166800315144','{bcrypt}$2a$10$zaicu1Pq9sHB.OG3zb4xWeKRAcCboQlf8kRQgF70sdmgeBB2RFmPe'),
('anne_bartoletti','anne51@yahoo.com','https://gravatar.com/avatar/10db96ea07ab9d41fbb5c195d23927b7','{bcrypt}$2a$10$mNN9Knoe4eAwzd1MvnJpPuYrHAgNeOyTgBvXm8tSrEYKn.xos5ZsG'),
('roy_grimes','roy.grimes@hotmail.com','https://gravatar.com/avatar/2a8e9beff725c1cefda5085f24b2226d','{bcrypt}$2a$10$hJeR8Jpk0ErU0wcCd8xXBuJI4g501RG8cJWrchIXpuxUPCjld/ePC'),
('mae_fadel','mae_fadel87@hotmail.com','https://gravatar.com/avatar/3bb55b70f91bb7ec684ac48a735a787a','{bcrypt}$2a$10$EjJ36nRncgGTJR6UHXDVCebAGUbsMR.Ld0tVs/V2A7nyZrVHlW9b6'),
('janis_harber','janis_harber81@gmail.com','https://gravatar.com/avatar/36e73fd857987302672d4be5cf716ce8','{bcrypt}$2a$10$ceaa0TSpZjIoeCJye2L/cO/7sFbBosMVS7ND4XMS5.I1qmoTSQA7S');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('bernard_fay','bernard.fay32@hotmail.com','https://gravatar.com/avatar/ff5e924d1142aa2f643f38c9cf39cee3','{bcrypt}$2a$10$gkvLhVXJGdgkY346/c2KtOU/Ivsf/BXzHfsABgih2OTViTwvoDiJG'),
('lorraine_friesen','lorraine92@gmail.com','https://gravatar.com/avatar/d9bf29e1223d18e610624620601180bf','{bcrypt}$2a$10$.leKLHbkrfMMqUOWp3TSfugSS3pDttE3DIWOvXHsVQknKk/ShycmW'),
('sadie_corkery','sadie_corkery95@hotmail.com','https://gravatar.com/avatar/9607489903f74243134d2418cb756e6c','{bcrypt}$2a$10$MGCiVyMf00fedrVJH8gvleFbKzPKhxqrYbc3/cnlojVHFxYMS47f2'),
('eugene_parisian','eugene66@gmail.com','https://gravatar.com/avatar/45d6b40066c36f8d2894f5e840cf3529','{bcrypt}$2a$10$L8UW1T21si7fxoczjxkVWuqQlYzwv5EAYmUbUbmKhEsQWeKrpAyLa'),
('timmy_mraz','timmy52@hotmail.com','https://gravatar.com/avatar/1e2beb393f27ab19d474613b5e1f2228','{bcrypt}$2a$10$JguCH42G3ct0/3ywJJ3imuwErgJLwK85DnIzYo8KC0eSHY9PaijYC'),
('daryl_jacobs','daryl.jacobs26@hotmail.com','https://gravatar.com/avatar/129778efc4180034018b12f9dcb11b6a','{bcrypt}$2a$10$9oUXgdTIZWBqN6D.bwvn/O7zaYty7M1gbdkvzsssmxrqTeNC26Qj6'),
('holly_kassulke','holly99@hotmail.com','https://gravatar.com/avatar/bfc059b167a38c3fc88eb17b51d1da99','{bcrypt}$2a$10$QtYsHg7NjACgBeZPTa1xk.BL/JV8kNI7eZqD2.3qG7O/gPAeCiNxC'),
('sabrina_wolf','sabrina30@yahoo.com','https://gravatar.com/avatar/2ec41c3fd133f54b0dc1783d87d154a0','{bcrypt}$2a$10$C.9RmJJnDAUkWG9ZlQCeKOfDJNlmbtBr0pcKIQ5v5uwG1slOVyUXi'),
('tracy_o''keefe','tracy_okeefe@hotmail.com','https://gravatar.com/avatar/d70e8a661820340d3164800c1ed64898','{bcrypt}$2a$10$OXzrEt0Dk0C5fAL2Hjsa9eKiQ/x0h5ACEmMwyIjqvbXToZWBveucK'),
('melanie_jerde','melanie_jerde28@hotmail.com','https://gravatar.com/avatar/e369e40af23333021e85716b51c33b62','{bcrypt}$2a$10$7bbdbo2apt50tQfqsIGsVOpQnzvU8ui33DP9sFY.zfSUuxPM3l4pi');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('ada_murazik','ada_murazik@yahoo.com','https://gravatar.com/avatar/cbc6e1523fbe0f9411b18d6bf72388a0','{bcrypt}$2a$10$b.UHq4DbQEP4p3YAqtlnT.po8SMnW.ef/r7CastGLcFzice5nd8eO'),
('roosevelt_hirthe','roosevelt_hirthe@yahoo.com','https://gravatar.com/avatar/00800d6df75345e89126669d3975eab2','{bcrypt}$2a$10$ZjJCY3nc7qEMXtqC0VwEXulbqEI2kpjz5KJarXwZno2o9awOAk/eu'),
('lynda_conn','lynda.conn87@yahoo.com','https://gravatar.com/avatar/a964a74bbb841e53662190cd0e47a903','{bcrypt}$2a$10$lDqccZIsTUyc1jtvVootHeyPrSF9.9kp51HrdzWOf6b744RW5vxmW'),
('lillie_reinger','lillie.reinger67@yahoo.com','https://gravatar.com/avatar/d47add5af7ac00fbed6107dadf33ee90','{bcrypt}$2a$10$8MHUZ7u9MjsPQXIlz8MiZeJonIELVJJFWtKWQao26Rn9VAsUucYDi'),
('monica_hoeger','monica.hoeger9@hotmail.com','https://gravatar.com/avatar/482323f28550edc0aff17a09fceae209','{bcrypt}$2a$10$.R4/N.F9Dqt27N4KGOqmdeFDojhR7WJHEpElr3fKofAGbLcNMk2dC'),
('bob_nolan','bob30@gmail.com','https://gravatar.com/avatar/f1b55aa80361e2cc3128695ce7b8e4f1','{bcrypt}$2a$10$R63B6FcgiGkXOmOXBAhY4.CEnmN39L5j.u5qykU0R4UnO.mxL8PUa'),
('lena_bernhard-schinner','lena78@yahoo.com','https://gravatar.com/avatar/85ddc15d5fa834e06b0383582bb39871','{bcrypt}$2a$10$wUa4UnvO.qwP84IH3oocpu67ozxViEskPAU4HeYNLVOWYxw3MP//S'),
('carolyn_deckow','carolyn_deckow89@gmail.com','https://gravatar.com/avatar/b36c1cfafe70546d2093548c38615897','{bcrypt}$2a$10$N7md4dM5McWH5au4ZQFIwuHQHKgaCrZFZYiOA7FR01o9gFDEs/PWW'),
('lewis_volkman','lewis74@yahoo.com','https://gravatar.com/avatar/3d33c06636b516ddd5020dd6a5f7584c','{bcrypt}$2a$10$INcxslQQ9iKaaRc6HCrATOMuCIZQy/md7NulzhTn.oaI.RYwWEqo6'),
('ramiro_mcclure','ramiro_mcclure@gmail.com','https://gravatar.com/avatar/d4caef447d1454fc213985bec874099a','{bcrypt}$2a$10$5/QhpQH/vdiAnGhFUl2h3OIhwWyEN4oaqlymLSgnpN4XSI499/qy6');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('judy_heller','judy_heller@gmail.com','https://gravatar.com/avatar/011a463d44d25f07512a288ec85ef3fd','{bcrypt}$2a$10$KzLOrBESN6F5T2bEA3Cl3u3NXi6GgnJRC9iPnMCILkvqj4V2tGDrm'),
('myra_cronin','myra_cronin87@hotmail.com','https://gravatar.com/avatar/4d2377f961ca90a2712d41fbd1fea92d','{bcrypt}$2a$10$EbG8yWtnUwwBvQS0WKbWuOheoN6XzPL3YD8PTwu/ObqI8XR7hISnu'),
('jacob_reinger','jacob.reinger@yahoo.com','https://gravatar.com/avatar/d142cd8ee4020c3d4bd66bdc93452902','{bcrypt}$2a$10$jxiEmm5qs.gd2cghKPUMAux4RR2kkm0hkHZihh.gFt2IJYWYrTx.i'),
('kenny_pfeffer','kenny83@hotmail.com','https://gravatar.com/avatar/3806bf4bcd8502fc32cc3b78ebc40248','{bcrypt}$2a$10$CI5vSQCBpXW/JB919J0p8OgCvLDR.6RwxyM1wfmpWZa4MH82dSojO'),
('victor_abbott','victor_abbott85@gmail.com','https://gravatar.com/avatar/d93e98e0892ff04feb930eb57733ba6f','{bcrypt}$2a$10$FQRg3OT3zaiLXDPXqkfewOzBOkmMhGetiLbuOG0MI6/obovuUoNgu'),
('johnnie_legros','johnnie_legros@gmail.com','https://gravatar.com/avatar/0d8d804eeed91ce8d08ded5cea983cf3','{bcrypt}$2a$10$rv9IGQZNgNZO/PfrVOWKQuCjYfAYHp3/h63y12vf4I/WZVJerF1nq'),
('eula_halvorson','eula_halvorson@yahoo.com','https://gravatar.com/avatar/9e70e119b0d626b08bdfeff7c996c93e','{bcrypt}$2a$10$7WgtVgtAltiElL4gDu8hN.be3hhMAurp2073d4KAIZoSBExgIy0Pm'),
('leticia_botsford','leticia.botsford@gmail.com','https://gravatar.com/avatar/026f0e313a463c0a3d1665f77efabf8a','{bcrypt}$2a$10$KMP/5q5CEYLgjvdBW6glUeZ.IyDBpcf98Yrxh3DrepV6k5FfWyxn.'),
('raul_cole-marks','raul.cole-marks24@yahoo.com','https://gravatar.com/avatar/8c769f5791d4c2a04860329cd779d3b2','{bcrypt}$2a$10$USYNvC2LR9FPYZwu4Q/yi.JLofMywxEsBnVnKArlV.0RMqsfwq5b6'),
('carrie_greenfelder','carrie_greenfelder87@yahoo.com','https://gravatar.com/avatar/56f52868be7fa50092f88e1059cff60d','{bcrypt}$2a$10$BTVflfYEsw0BZ7W5o60EvOEl00TtH1.8wMtZv2NPjFFku3cXAgTcC');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('angela_aufderhar','angela13@gmail.com','https://gravatar.com/avatar/1e12b7b3332528fc4a00770fdebfc99e','{bcrypt}$2a$10$SZ0K0CyyCnQ9XJYwgD4My.w7ij3lVzePePWmAT9HHMLOu6v3OuWv2'),
('allison_beatty','allison_beatty43@hotmail.com','https://gravatar.com/avatar/6c82bd9db8d60884c6e38087cb09c8cb','{bcrypt}$2a$10$Em1Ts2x1LQt6QqinzwfJ5uE3kApBmUaL/1ONOxryTF8eKYh9EfJDO'),
('jeremiah_herman','jeremiah.herman59@hotmail.com','https://gravatar.com/avatar/5b804e43b2b3585911232bc5a0bb6be5','{bcrypt}$2a$10$THonsqgspNCAz5Ut16UO0eeYxIWVmdc34b39pM7XJcVGbxhIWWFLe'),
('josh_hoeger','josh91@gmail.com','https://gravatar.com/avatar/b5ba944b1b90fb4ea5cfc17958f6a1e1','{bcrypt}$2a$10$xHqjTZR6JesM1xQhP/ucwuKTn9bKiUzt4DRjgImUFwUcQNI1as5vy'),
('denise_friesen','denise88@yahoo.com','https://gravatar.com/avatar/fff2d07db38b8d145547ad0372af2250','{bcrypt}$2a$10$.B04YV.bHyUJzRpredja7.KO53L.AWectLzQmkYwDN4vahvX7GW2i'),
('wendy_casper','wendy_casper53@hotmail.com','https://gravatar.com/avatar/bb9a438cd5962efe1e7a58a34b982eba','{bcrypt}$2a$10$3/.uox6J0Fmg9UMBeHTooezryfdkDa0Kx6j8wrGCsQIasYmIn9qiW'),
('katrina_runolfsson','katrina_runolfsson@hotmail.com','https://gravatar.com/avatar/5dc90647507649557d280e477665760d','{bcrypt}$2a$10$k.KHWRReGk77FgWf4/1z8eMwKWvWbQtPsiph/XnCEV2hyyD9D.eIi'),
('annette_bins','annette_bins92@yahoo.com','https://gravatar.com/avatar/63d2c587378cec28302cdc86673092d7','{bcrypt}$2a$10$8ASSIzDXj4SyEkwgtIel9.oGEpxFYuB2jDe2yQ9ZcmHTfA79boK0K'),
('spencer_cummerata','spencer.cummerata@gmail.com','https://gravatar.com/avatar/bea8129f23101e2d548a727b0e4038e6','{bcrypt}$2a$10$TlE31dbe5KJc.hWKgR/r2.qcEkd79aZGE9k/n5eIwoQN/axMZ4TBm'),
('allen_carroll','allen24@yahoo.com','https://gravatar.com/avatar/e8971d31196af455af01de797e967555','{bcrypt}$2a$10$.bO1Fdi2m79/eU2ksu19zulh8TeNRnm9t4paoKSVBng1AZPOqYyGG');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('molly_gottlieb','molly12@hotmail.com','https://gravatar.com/avatar/29eba92cbf41ffbdd9e6300d2f69ce0f','{bcrypt}$2a$10$6AL8j5mc7jzYrsmXNikrkePeVUEt6N36vaAvhWTkIrT.0gfsCTLrO'),
('shane_mertz','shane93@yahoo.com','https://gravatar.com/avatar/7d5152ba34155df9ebb36556b59602a1','{bcrypt}$2a$10$Az/s.j3XNGHaG1pSsb/UBuR/aDzSQobJiDFOoxN/UVhb3qeDR.MiO'),
('mona_harvey','mona93@yahoo.com','https://gravatar.com/avatar/317a3b52103a9f211677d428f6c45258','{bcrypt}$2a$10$tiTwB/xyrIva9p2zmJBMx.3DDXQbeAvYYuekZZU8LQtJb.NBWvD7e'),
('caroline_ortiz','caroline_ortiz54@yahoo.com','https://gravatar.com/avatar/9c635bb2d1d592e5e1cf31853c8c2293','{bcrypt}$2a$10$Y2tyHZhRuarrXTVaVqSpTu3QzxdaZBJ7fJfPAHX5rdatCX63mfc3W'),
('raul_lowe','raul99@yahoo.com','https://gravatar.com/avatar/39ca72b86b0236060571f89a069d6da1','{bcrypt}$2a$10$gKpzV2ZLkIbD9zNhWlc5duhmju.fKC6e/Ax5TnbkJqOM4ElNNp.OS'),
('judy_littel-schiller','judy85@hotmail.com','https://gravatar.com/avatar/05662d3391deb6a8818dda72900e9dfa','{bcrypt}$2a$10$zZJV9ACwgqvEEFtwoSto0OjJyNuUWQxmjMfcEh.0Qkc7h2WKYqgtC'),
('desiree_oberbrunner','desiree.oberbrunner@yahoo.com','https://gravatar.com/avatar/f155a1f1e0eb50d8c2225c46fa205e09','{bcrypt}$2a$10$WF1Bz.6eUNSX7G9MeJu8Behnhm1M8tjxLs4O95ECYrkNZ21SHb1di'),
('josephine_carroll','josephine_carroll@gmail.com','https://gravatar.com/avatar/9281afed1a709d3c0a0539036068d565','{bcrypt}$2a$10$4dDrC64BQChNiioWzohXS.cE0nLwp1KfFFjXWy7Y1mdFqH/2ZHoPW'),
('carlton_o''conner','carlton81@hotmail.com','https://gravatar.com/avatar/da661efb66a74a2d7bfa189e10422036','{bcrypt}$2a$10$aU29SAJ5kC6tfRE12WaocuCK6Ugh24iU7LJS3gMN8iuqYJxpxfhQW'),
('armando_ledner','armando.ledner@gmail.com','https://gravatar.com/avatar/28d027ed5d0d85e6813eb75fb1577855','{bcrypt}$2a$10$v2hKu43B3uq5wXWO0VSmDO29FBf.prrAqGSJXd2bKbI492Qi7ZIra');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('abel_gleichner','abel44@gmail.com','https://gravatar.com/avatar/8e3a49f6e5c68f16f0d442e6fc431686','{bcrypt}$2a$10$IrDzEYy689PYCBu5fICBruTuZrC8Sfoe3DQlNlLB7sWCC8HnI0WWy'),
('kristopher_ledner','kristopher_ledner38@gmail.com','https://gravatar.com/avatar/902b32c330cddd264ab7121ca93acdae','{bcrypt}$2a$10$.dvMuGffs.Lp0V93YITiu.81.IXBxYwiy8mrrzTlwuOD6lBz0cvFu'),
('percy_kihn-langosh','percy_kihn-langosh99@gmail.com','https://gravatar.com/avatar/e5861b4dae5acf843dfbdd126a3928aa','{bcrypt}$2a$10$l80pMJRXFzL.vBmbrBWg6e6t7BDGbHaFKST.WrFyRAAkwOe4cIid2'),
('courtney_reilly','courtney.reilly@yahoo.com','https://gravatar.com/avatar/fb66c96f026e4730b39b73918afff6e5','{bcrypt}$2a$10$V8MiP3QCsleTanw2QFj9NOAqF6.KN0PCtTpVxpvZ0Ix4f7VGsJvAS'),
('maureen_mckenzie','maureen41@hotmail.com','https://gravatar.com/avatar/d91e2ad5ee3f4312e3336b4e7207047a','{bcrypt}$2a$10$CgrId0rleuT53H8aZHIGQ.R2Up/w6Jf324R7QVNMIjGslrh7I.TPG'),
('carlton_shanahan','carlton97@hotmail.com','https://gravatar.com/avatar/b9bde736222f4a5d9bb599c63d3fbde0','{bcrypt}$2a$10$h.WWb3q2CBfQ40mBK6TD.ukVtz8Vf7i7l1eybOEqXdcJhD.3znH7S'),
('jesse_pouros','jesse31@gmail.com','https://gravatar.com/avatar/1ea31ccef5ddd69d0f0a168dca73d2ce','{bcrypt}$2a$10$VEonMv04QUF88cyE70sb8ODQsvoe8VAu4uh53DJION6y561SU8w..'),
('elias_fadel','elias73@gmail.com','https://gravatar.com/avatar/e63182877f0c83cd1e82f69869e4ac04','{bcrypt}$2a$10$LWaB8/SzGTtvmRv6yZ4QbuBGey9xcTTUwDHe4PkIOgjSAMdAttSP6'),
('leticia_kohler','leticia.kohler@hotmail.com','https://gravatar.com/avatar/b376973e1c9a2a5a7c3f0dfdf5cfd1ad','{bcrypt}$2a$10$9ZWM7nM/sJzijQIzs2Cvju3HYS.gCXXMxgqDrrVbQVRRrD1qzUwDy'),
('dolores_johnston','dolores_johnston89@hotmail.com','https://gravatar.com/avatar/fa857857bdfe8b07296d2585d893f028','{bcrypt}$2a$10$Jbc/Kk/DltpkrXWchALfhezyom07Dgh88JmGg5Ta4hoeHx41InjZi');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('cristina_blanda','cristina.blanda@gmail.com','https://gravatar.com/avatar/4c880ba4a1561be14c7fad9d50e71c17','{bcrypt}$2a$10$s6BC5XOiXo/CAM.1EBUR7O/fTodvqeJ8dUllxQVouP4dHMPISjTle'),
('jeremiah_zieme','jeremiah40@hotmail.com','https://gravatar.com/avatar/52de8e9eb0896e159540aa1a17a00400','{bcrypt}$2a$10$np/hbtxu/07M3Igz9GyYBev/vY9Hv9on4/sENej/.8r9DFFi4wo/C'),
('lynne_jerde','lynne_jerde@yahoo.com','https://gravatar.com/avatar/1c6ca817ee545d557f169da9bdb23c89','{bcrypt}$2a$10$dJ7nYJgeRvOG4JUXe2OMQ.XjvKcr1.c7U/tbEXRN5RVFeYmEVeY.K'),
('terrell_stoltenberg','terrell63@hotmail.com','https://gravatar.com/avatar/a823157aa24edd8c19d2e3d4a605b2e1','{bcrypt}$2a$10$BCaRvIkVfhSg90JmXKGDDOEgsXuGESZgJgGAvwMJ37afCBzaO0Z1K'),
('michele_littel-barton','michele16@hotmail.com','https://gravatar.com/avatar/7160025901be966d2a23dd899ab050ad','{bcrypt}$2a$10$V/bD7bnskeMQDR96NRyx1OzvdK7vcc9z.xUphNUGfFEWEDrtyZKp2'),
('ralph_bartoletti','ralph.bartoletti@gmail.com','https://gravatar.com/avatar/cc8828a535ed3aab3be1aa6130eaa130','{bcrypt}$2a$10$vHwmAn06qeTpS4Qy9UsJTuf2g6fu7RYgbwto83gWGLeGaKAjnSWRm'),
('orlando_mills','orlando.mills50@gmail.com','https://gravatar.com/avatar/3fb3b3a454b49d3f9d54aaec3763628d','{bcrypt}$2a$10$S73cr00xZJiQuWQGauV4xO4c/w1pjMPN/tbLP.Z2Hu8PtDuTK0PHW'),
('eleanor_pollich','eleanor_pollich46@gmail.com','https://gravatar.com/avatar/8ec449c2ac8be237b24429c40f7ad2b6','{bcrypt}$2a$10$.z0X7xYQ.NiCNU.K81KGKudpBUm0CmzD7nUT9f6pTIAsng1OuwOou'),
('herbert_abernathy','herbert25@hotmail.com','https://gravatar.com/avatar/539953d4dfecbd39f63b06b0c7711f9b','{bcrypt}$2a$10$554ijhkzxOyvb1GF8CdLu.KjdENGW8SOs.pCYCOxKl7dqoWuO0GMa'),
('nina_turner','nina_turner@yahoo.com','https://gravatar.com/avatar/ec7788cb3e3ce5a3a269e46e3e108e87','{bcrypt}$2a$10$rhpyBVnlxO.UhJbb.AnQ.uZlgre2hXVrkGXKIzKgXDvRXUA0CDwom');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('ginger_kunze','ginger_kunze@gmail.com','https://gravatar.com/avatar/e37914fc7bca7b88de05c97fd42c5151','{bcrypt}$2a$10$N07gVZrNgOHaXX43.BeDKeEC4qDmPpzGwaJHomvz7jGlaDIgDmWDu'),
('angela_buckridge','angela8@hotmail.com','https://gravatar.com/avatar/f0a0f612ad3642bc595284310c529baa','{bcrypt}$2a$10$taDeWZDGyNtygc.5.4BI6OxyVTZYbxM9eLnNjnG.hkp8WC6IeCvBe'),
('lynette_sanford','lynette_sanford63@yahoo.com','https://gravatar.com/avatar/d51a89549ec9e34b2836d191729fad01','{bcrypt}$2a$10$TRFDroewYy/raSdaDE2uIO2nxxs84HfE.HlEAxLWMk.Q26lgqIOF2'),
('allison_hermann','allison_hermann15@yahoo.com','https://gravatar.com/avatar/4a84a6d266df938511457e265b410d58','{bcrypt}$2a$10$zfiPfdv6tRbPgfEXjD1QZuAOa8ZfBXEaAXSMwLpmmjBBrUWsLWe.W'),
('kathleen_boyle','kathleen.boyle@gmail.com','https://gravatar.com/avatar/2a2e09b102b52cad6ab1077776991f35','{bcrypt}$2a$10$Wbg.3k3aTWdKZMTRMX5rdeZe4JYZHkDhItMlKhibd4rUO33fA39vG'),
('kristine_reilly','kristine28@gmail.com','https://gravatar.com/avatar/0328086f67c312febdc7f54477ba1e01','{bcrypt}$2a$10$nGJxEeAZAsuAMaxXNgAAoOhJk4MIC3UkrfHEVoRd0/ODMktPL66Ea'),
('jeff_wunsch','jeff.wunsch29@hotmail.com','https://gravatar.com/avatar/e76841e477c455860ba9733a3f8e9d2e','{bcrypt}$2a$10$VaUFL6T9wqbwYu6lgZ4knORCQoc6d4rytXldUSIiG6WYgeDz0bbNa'),
('barbara_adams-terry','barbara.adams-terry@yahoo.com','https://gravatar.com/avatar/5a1d2270ca4b36dc922bb88675aad949','{bcrypt}$2a$10$B46OX1RxxyIdUIo4pPTQgOmqjDDlBA5ocgPyQdLmQy75wZcbqaSOi'),
('ramon_aufderhar','ramon76@yahoo.com','https://gravatar.com/avatar/ad2e14bf5ea062f1eae8d20c38cdea4d','{bcrypt}$2a$10$HOCNUMWkr.iw0bh6ein1zOwTJhGNF007jJnIw3BsplKWxCUOEq2EC'),
('cameron_baumbach','cameron73@hotmail.com','https://gravatar.com/avatar/0511815a5d0e2b852e4a7e0963cf5e0b','{bcrypt}$2a$10$arGOaavBQZrN64I32n3mGO3oSP7V831L9rDZn3FK6MzGpRQl0eINu');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('inez_beier','inez59@yahoo.com','https://gravatar.com/avatar/df4b48aa1e56fc2572b46fd2fa281a17','{bcrypt}$2a$10$30meJcspovMnnS/WzeO.cu2lMUSFz.O1KIGYDQhlsVF8RYhHiw8te'),
('carrie_quigley','carrie.quigley@yahoo.com','https://gravatar.com/avatar/b3ca960d5a9d4f0af37820e135c67a0d','{bcrypt}$2a$10$n36XZorBGk3hHaQdz7zBXuBvQz44TZ9Mun/lzvaIIdsauLm6m1i3W'),
('mary_green','mary_green@gmail.com','https://gravatar.com/avatar/2715a6f531f39d3ad6c30e6be731111f','{bcrypt}$2a$10$Et5TMUAKTo.lZD9cURD3Ju33f4/o1YwMkbj.ZhclGbkoMy5XYv53u'),
('alicia_quigley','alicia.quigley@gmail.com','https://gravatar.com/avatar/3a500f57916a85e93246cb98eba2e6e3','{bcrypt}$2a$10$FEw2MQEcVnQ0S9cGrO6e0.NUkOFYf4R56GLGoCsCOyJf7CHvuTQ.K'),
('amber_champlin','amber_champlin81@yahoo.com','https://gravatar.com/avatar/6333ce83fa6cd2a2a026c7dc798e82a8','{bcrypt}$2a$10$kLrxnwUWMie9GUBfAst6su9Qu4hirg9sST5Ez02z6.SmG2Ia.DCsS'),
('sadie_konopelski','sadie_konopelski46@hotmail.com','https://gravatar.com/avatar/e27a75c0e37889f3f666b16938d43686','{bcrypt}$2a$10$91l5tSPWCn41x9AU.qOTj.wxxknHUO/jaJhm01NJunXGCbDEHFw36'),
('josefina_halvorson','josefina.halvorson@gmail.com','https://gravatar.com/avatar/c8c9ca35e3e2d331840a9b2d4adc356f','{bcrypt}$2a$10$2g1SUSigKfFO5ntMoCw/w.vz/jMTn8I2Ky1jfKObfjLAUEjM3o1MC'),
('lindsay_haley','lindsay80@gmail.com','https://gravatar.com/avatar/edc409d3d6b1c6cc9014eb175976c530','{bcrypt}$2a$10$QfZZkK4wXPlKYxFJ.ftAA.HgjAt5BMdtcPewQB8SqFxIzcMzC99HG'),
('gina_west','gina.west66@hotmail.com','https://gravatar.com/avatar/81f6fb920fa3ffbe6ea438de45e3ffa2','{bcrypt}$2a$10$9Y/3PMn6agsipuMDcGWZouUoU2nPffGsFGsFe12x4wSm6oV8cITYS'),
('amelia_renner-bernier','amelia50@gmail.com','https://gravatar.com/avatar/37ba7b33856adb4ac8bd111945e500d4','{bcrypt}$2a$10$/eWSQlD/7D8RAAlrCC9ZyO6gcoRhDBUZ8nhI5PytHCscEmMm44Xj2');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('alonzo_botsford','alonzo52@gmail.com','https://gravatar.com/avatar/0ff0a9ff57e6aba84eb662c67b764d4c','{bcrypt}$2a$10$qEgmtB6NkG0Ub3HxlarBVOcIgoPJebNok4XiTBBaHUOTdAVj2FxvG'),
('gail_bayer','gail9@yahoo.com','https://gravatar.com/avatar/85178bfa801737431aaa4fa88ea00f9b','{bcrypt}$2a$10$CO0j0fKHQSILIQCSB.VwMOy/B8nAt.qXFTjoqZI2Si86e95w4w5pS'),
('joy_yost','joy.yost68@yahoo.com','https://gravatar.com/avatar/1083a596745deecf3e41514e0274167d','{bcrypt}$2a$10$EkTiA3IVnVUDvBt0806KGe2ZkPtF8l/s.sGyyugL.zZEa1d1dKE1G'),
('shannon_gibson','shannon.gibson@yahoo.com','https://gravatar.com/avatar/e6395ce2a2137243dc596813b7a618ad','{bcrypt}$2a$10$iW0iWlErgtPpusesug6o7OUhzHahrRS3Tmtf6Js67ReQ505xK3Gtu'),
('marjorie_lowe','marjorie9@gmail.com','https://gravatar.com/avatar/3629562dcefb78798fd1a8b7a5ce8950','{bcrypt}$2a$10$kuw5RTYZn24ugaQ4ku45u.3kYyR.RbBUSjKJDUNok/RqLuCQl.SDu'),
('tim_bogisich','tim35@hotmail.com','https://gravatar.com/avatar/109d5614334c8d6575d32816b5861d85','{bcrypt}$2a$10$JDM.i5f6mwjZw3/bbi3F8u7pBzg414osnuKelM5aiJsgj..kpCVPC'),
('blanca_hand','blanca_hand@gmail.com','https://gravatar.com/avatar/4684b48cd7f7560632cce73b44e62486','{bcrypt}$2a$10$Ic6.7wOBnj1gVFtXvQdYT.2UZHMlm8IU1stdbA5KtiCiAug4.2Ki.'),
('chester_ernser-miller','chester66@yahoo.com','https://gravatar.com/avatar/142c4f31c22a5a3bb3e47dfc7d72e171','{bcrypt}$2a$10$LXX7OgsugPwVFdDjvG0OE.CdvAadMIEG78DXG.ixKuoXQePG69OVe'),
('austin_thiel','austin.thiel42@gmail.com','https://gravatar.com/avatar/6c37b79914478f604977b1cb953de2aa','{bcrypt}$2a$10$rSrstvQySL09Q6cf4oSD5.73lz2cnVQC3KVYt1LOX0HbYmEGLEW4W'),
('bessie_schmidt','bessie_schmidt@hotmail.com','https://gravatar.com/avatar/75c3089adaf60db207c65c8b35ccccf9','{bcrypt}$2a$10$VC2rYlPNhFAN.Z7oZ/ZdMeiA29T09aQCaQutROC0.qN4cpDjTskm6');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('pedro_weber','pedro_weber79@gmail.com','https://gravatar.com/avatar/79b458a3b84237fa43c381787a72fbc7','{bcrypt}$2a$10$z6r2kp.Wfn6DgP7YcFmH5O8L7dIcBebSBqbPO12NW2ArOx3ygRJ7W'),
('stella_brown','stella_brown@yahoo.com','https://gravatar.com/avatar/52ae588b6ffab70bccb7c0db560dca7e','{bcrypt}$2a$10$dscQyuSqVZsiSlDyHfDh4e5f8J9r4pnt11vORGNYhbBihsUkRNJWa'),
('ismael_torp','ismael_torp@yahoo.com','https://gravatar.com/avatar/7d633176fd4c64ce142d90dab820d050','{bcrypt}$2a$10$7j1uhTPiw8VJjN5OYk5DsuyLLhAAGzSPpCIHGPewjof.kGsOP0ES2'),
('amber_jerde','amber_jerde@gmail.com','https://gravatar.com/avatar/85e1c32d5bf4ac3867d1831553c03271','{bcrypt}$2a$10$V.Nhg2FCKpePFmoryJtVjegBlYIfaM.b9ImQdPo0g.jDgL2F80ad6'),
('wade_reichert-torp','wade.reichert-torp72@gmail.com','https://gravatar.com/avatar/4d10cb8fe2a8ee15be199b9b33a6c62c','{bcrypt}$2a$10$PHP3tlyJscuHp6aAm1fogOEAuPPIyh7MfQB2w.i3NJc33M4AjXoIC'),
('lorene_thiel','lorene_thiel@hotmail.com','https://gravatar.com/avatar/071d918c2030fdbdfdb293644426d568','{bcrypt}$2a$10$oWp8qgnXsng674Ff7mCLneKkXVemzEOqIxW7NcoWcoysrv4Risfl6'),
('grace_swift','grace_swift@yahoo.com','https://gravatar.com/avatar/06d21dd1f0bf73d494e4ef06a6bc9aaa','{bcrypt}$2a$10$SLkFwKpldZT1cwMXN99lpepFIe0ifGxS.Dy/tvFwI79NRo9wAWg4C'),
('cornelius_lind','cornelius.lind38@yahoo.com','https://gravatar.com/avatar/bed58cbb5a68a54bc2b024798f474425','{bcrypt}$2a$10$usHGVUI/NzPhaNH5KE2ZJ.eyYJ.dp.783pBVIoEXievKSPh6DChR6'),
('jean_hodkiewicz','jean_hodkiewicz@gmail.com','https://gravatar.com/avatar/8996ab8ec88b7db0b18e89c257b6074c','{bcrypt}$2a$10$iYV.r6opIairG.nreXWYuuXWlBGzFZmiQDMyCgoUHEvqbBKAuEsae'),
('cornelius_simonis','cornelius_simonis@gmail.com','https://gravatar.com/avatar/02a9c7695244645bf79bed647859d266','{bcrypt}$2a$10$4PmaFr1NXDC/JxCW.pKUeeVh31Hs1H1xJ1jO1F75VJwVOCB2yhYqK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('tricia_windler','tricia.windler@yahoo.com','https://gravatar.com/avatar/c84344cacd2fe7261faa051897ba2cb6','{bcrypt}$2a$10$MPjrzd5xXVaz7kaYsSh3verO/5R9aTBLps5HgfgsCgMHwVdcZfory'),
('eduardo_kohler','eduardo.kohler97@gmail.com','https://gravatar.com/avatar/39976898705b0e856594165b6fd4130d','{bcrypt}$2a$10$WaXnEq3m9qXdvdN28JABqOuB7fR6HgXlVXp0nZGc2xwXpxVXxO0la'),
('leslie_king','leslie4@gmail.com','https://gravatar.com/avatar/41daa812c2d49a0ddd39bc5de449f081','{bcrypt}$2a$10$uAatfRJDViZXQEFUSz1bq.XJxheyDVhgB2Ynf0nwLydEJDcfW.0CW'),
('bethany_connelly','bethany.connelly25@hotmail.com','https://gravatar.com/avatar/95ec229bf7ea68b53249e57533f15510','{bcrypt}$2a$10$mlufWDHvIstiymfxdxyCsu4trjr3ZpWGXGtg2Qgd2nyk8zzSJoXEK'),
('duane_heaney','duane.heaney@gmail.com','https://gravatar.com/avatar/be74a66f867e8ef5552b8b9db8827701','{bcrypt}$2a$10$dvNETrNItBmBnJ6WIjfgpu6JrgZLTRTmDgKqyLwoIcZJeTOlUXfQ6'),
('whitney_skiles','whitney.skiles97@yahoo.com','https://gravatar.com/avatar/094e601a4cc679a5f6c298435d9fbea7','{bcrypt}$2a$10$N5b3yDqqSnYRhbQyt/KjvejbzPMSeR08RQAwLCuxuHQO6W4/z8yUe'),
('darnell_zboncak','darnell_zboncak@yahoo.com','https://gravatar.com/avatar/449d0f1173a439e54e92083ebe44d01b','{bcrypt}$2a$10$GtoE/NbKBZOdQKUXrwpNueIoU1xJsQle4wB9..gR7.Tpjcvr7jciC'),
('michele_pollich','michele_pollich@hotmail.com','https://gravatar.com/avatar/6a1d8a8444446994f609c059dcb72390','{bcrypt}$2a$10$T8mrDshTidbEx3NvPw6pneiu/iPOtxNeYRrpIUpMqqDpaUu.wcmvm'),
('penny_littel','penny_littel@gmail.com','https://gravatar.com/avatar/10e46eaf46e871adf3cc93339bdc2347','{bcrypt}$2a$10$hiGf9R8pbMGKoIg0IFPWyO5dMEl/ibd5e1GVLkmD1DuhmiMMe8ygu'),
('brittany_lebsack','brittany.lebsack@gmail.com','https://gravatar.com/avatar/7ccd05f1d7e223d50b3e1b065bae17b2','{bcrypt}$2a$10$p5GNw5KK0SPZ9J8hZNM8MOooWiHa17fZO.zf25BBiLESiZI.BrZPK');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('cassandra_larkin','cassandra_larkin0@gmail.com','https://gravatar.com/avatar/e6c213911e7251944ef82032b21e0dff','{bcrypt}$2a$10$4o2hPDVsfoYIwHOQ6whRc.l3f6Kokj43.uX3KSUvyXUgnXzJd9WSW'),
('samantha_hodkiewicz','samantha28@hotmail.com','https://gravatar.com/avatar/50e004977e79802a10530869b3bd8891','{bcrypt}$2a$10$20Euc1E8439oivOCHtJI2eecOYPdZ8ic1SB3NL56duJGMZNgb3GUS'),
('marlon_rippin','marlon_rippin30@gmail.com','https://gravatar.com/avatar/392edc1e691026d92b2c86e4c711ccfd','{bcrypt}$2a$10$N6maFt9upoz83.AL0G4Wv.rDnSmpiZGWVOnPxPj3gWYaeGuzg4hzW'),
('lana_koch','lana51@yahoo.com','https://gravatar.com/avatar/86dce883d9ff2f928bc61042e4164d83','{bcrypt}$2a$10$bBfwXjsyVfu.HfmlSha3heEdA8D09spWM0JpvruVNPV3zJCgR21EC'),
('alejandro_kemmer','alejandro_kemmer13@gmail.com','https://gravatar.com/avatar/52289db7885a424545bbb41b98a0d703','{bcrypt}$2a$10$ZjuCbFlqJsYSj.m0IdVS9u0naLBGrU0vdTeUtZZdytYUbus0daRSy'),
('todd_hilpert','todd_hilpert42@gmail.com','https://gravatar.com/avatar/41603769c2f34abfe6f9c60a50e0f082','{bcrypt}$2a$10$oG24Idkch6Pv4SkWiAmPweOHAnXm8CGvAVb5LQULyJk47bnU7dCRW'),
('darryl_balistreri','darryl_balistreri59@yahoo.com','https://gravatar.com/avatar/a2573be0dffb267d841cc3417644a477','{bcrypt}$2a$10$pk6Zk0PBsxVltNNLTByAa.OAxDfRiRBkNeLpqZMRXcawR6.o09rWe'),
('darla_conroy','darla_conroy@yahoo.com','https://gravatar.com/avatar/e41a5b411fe89d38615457fb30c2e747','{bcrypt}$2a$10$e5tD2kPwjHZYV78VZOK0NeRkbqC2bE.ODppPArbjTWGvl.0g2XHO6'),
('darryl_kovacek','darryl.kovacek@hotmail.com','https://gravatar.com/avatar/d0f1d6ceacdba72cef3b648b583517d9','{bcrypt}$2a$10$CwKFKtHrup8AMjkgiNubYefqELKsUdop63qxTquzfMtqiFYn0xJqO'),
('mildred_effertz','mildred.effertz@hotmail.com','https://gravatar.com/avatar/a32ea700e5f140124fd415790ecb4586','{bcrypt}$2a$10$KdIGC2ReCrRifo0qYMJ22eKm7RgrbibzaZXD9oLSlXQzjNyJgHnoa');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('violet_russel','violet.russel50@hotmail.com','https://gravatar.com/avatar/d98b8af099f8556e4f5c5b2521d13a8e','{bcrypt}$2a$10$E8XqB/u7OK/SQjbPqfXnue5VFk41degv5VZjjH5tBY5RyPP/X36v.'),
('linda_prohaska','linda_prohaska@gmail.com','https://gravatar.com/avatar/9812990d5ddd74a0c1eff78bd357ec7c','{bcrypt}$2a$10$1dDBHEB4xWBr94WHJzFBYufmoQz569jcVxZmJhAgZ1avGiUvUjt.K'),
('cindy_jaskolski','cindy_jaskolski@hotmail.com','https://gravatar.com/avatar/18c44ce6126007d2e8ac6c0ec026d405','{bcrypt}$2a$10$WRVOK0YTzH8nmpIv6cFUNeqdnIw5EYC5wCvOoo8mSRDnTNAWSJWu6'),
('pearl_goldner','pearl_goldner86@yahoo.com','https://gravatar.com/avatar/d548be4e5b4a7695fd8eb576e8d051d6','{bcrypt}$2a$10$0KbBPjHVboGdhVyFjY1HAOiWlfM6wKmMbhlC5ebBaPuYyV9FlZore'),
('sophia_dooley','sophia.dooley77@gmail.com','https://gravatar.com/avatar/4d180cf09e4cc8739bcf339eaadfb505','{bcrypt}$2a$10$mR6ZhIhTXk6iYlCsWvNTru24yZyNzb9v3Ia4kGBbGrTRElrXSwgL.'),
('dustin_collier','dustin.collier48@gmail.com','https://gravatar.com/avatar/beace4f5a3475830c660d01a81e4c862','{bcrypt}$2a$10$ArYLIdC33SKxpgH4HtVV.e3WXA5YGbMvSp9jPmibBqYJf3Oc8QrZu'),
('valerie_wisoky','valerie.wisoky43@yahoo.com','https://gravatar.com/avatar/a91fcdcc4b286ed5bec955db1321a86d','{bcrypt}$2a$10$aeUWwos.gn.zB40l2c4cRORIzKu7RKAqHXgEEBehUxyGWwBUeqage'),
('nellie_towne','nellie.towne@gmail.com','https://gravatar.com/avatar/cc8b56b87889c9bd16b7f392d192963c','{bcrypt}$2a$10$QFE8ggPaqjMOxljfVsgS9.Yqqc6lOnPp3sYT/JW5IGs.kVWdUxsL6'),
('claudia_jones','claudia.jones78@yahoo.com','https://gravatar.com/avatar/ad4635d616f6c96ec55840c46bcc4a41','{bcrypt}$2a$10$Kg.kRxWYvaxaPwtZLy5Jheo/hp593cxw.LTmyTa.wqQN9HEdAZHaO'),
('neil_batz','neil.batz82@gmail.com','https://gravatar.com/avatar/bb4d5d59917226cacb03f4c686221627','{bcrypt}$2a$10$jyry3SpKME/9akDAI8jCOeUJCh.CBjIWR0PW9D.pJdEphT9ta2Eu.');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('curtis_powlowski','curtis.powlowski26@yahoo.com','https://gravatar.com/avatar/a95c02147ae6f4b7934bb069c711b685','{bcrypt}$2a$10$HTg.9CbEklLvngNG.E2TYObHaSWAR6N/OiGK1maUGuyB7Q9g7gTyK'),
('sue_sawayn','sue85@gmail.com','https://gravatar.com/avatar/36c8eed25e3f0372131e9c059ab26139','{bcrypt}$2a$10$OI9Kn9LpiONEgVxASEyvRexBWNzpxKxJqQ13whgzSeArsMTl80D26'),
('arlene_wuckert','arlene.wuckert@hotmail.com','https://gravatar.com/avatar/5b8187f69077b27959833c4286100046','{bcrypt}$2a$10$kTI/hHRevgLwkSkPxu3UDO0KleatMkhF9xgI6iBmeIAg9ee5jkMoG'),
('dave_goldner','dave.goldner@gmail.com','https://gravatar.com/avatar/a83aaeab46a644327e938cdfc314617c','{bcrypt}$2a$10$RbZOTU6lkSg1NIk0JrB1dOJqfPsODaQNelurrNN274R3x1T4XhNFe'),
('kay_mertz','kay52@hotmail.com','https://gravatar.com/avatar/804678b14e4bfdc8077f333b46440456','{bcrypt}$2a$10$elZc9onxdjH746KEBTZTq.onhaxz75A8YtY1FnpbQ2cj0gIuGo8ai'),
('cory_bradtke','cory.bradtke41@yahoo.com','https://gravatar.com/avatar/d94e18d7efe5d2c42729e7b89e7a5403','{bcrypt}$2a$10$44Rqk3adJkYpfmttjnpRBeVgs1hbJcxLixtTnopRJVO2VaDI9qd2a'),
('bobbie_howe','bobbie.howe@hotmail.com','https://gravatar.com/avatar/4a869b20973d5474b2a4c93968287298','{bcrypt}$2a$10$Vz0o/WUxMQ0rtzBiEFXcw.GNSOniUpivUcqQAxUhw/TYyv4ECSyCu'),
('marsha_reichel','marsha.reichel33@hotmail.com','https://gravatar.com/avatar/3900bb7a14641cdb87ad72bbc819c1a6','{bcrypt}$2a$10$LAdIjSbptqMnUzUoTphLF.9fI1Zjpd5ALgRbxd3DOQXe6cDJ06nTi'),
('tyler_marks','tyler_marks@gmail.com','https://gravatar.com/avatar/73959af11f6982f9d81f6ae807e37167','{bcrypt}$2a$10$Wt9mtBvsp2YKMkPDrDnIheQzmBkbWNDtDrjBQuTwa5/b4XPIorDgK'),
('casey_towne','casey.towne@gmail.com','https://gravatar.com/avatar/fc3946b3d3cad53644075ebcc21105ce','{bcrypt}$2a$10$k3CaH1N4NbRKDWpIEQqoU.2AcC4jxQRE1mBQyQQzpYNgjMin5Dila');

INSERT INTO public.generated_data (nickname,email,image_link,"password") VALUES
('jeremy_carroll','jeremy.carroll@yahoo.com','https://gravatar.com/avatar/52062a3486c1c2944c984f9ef6a899c8','{bcrypt}$2a$10$l4ovFASY1FEk4mFhnkeo/enlSjjP2KlZm.uzYcvschwmT6VUGV5k6'),
('jill_gutkowski','jill.gutkowski@hotmail.com','https://gravatar.com/avatar/75c4dd5122208db56890801ac4b5a7c1','{bcrypt}$2a$10$4q23qgEWu9SSLUCTpS4aWO7wBryuCrkgAywzfBxtbqBCQgn6T23IW'),
('cathy_green','cathy87@yahoo.com','https://gravatar.com/avatar/25fbd1b8fa455c47f477cd8c90e428ff','{bcrypt}$2a$10$RJ6VBVqDuz16MXAQJD0YYON6fVCgDm5g.eFGuv606nvas97qnPrRi'),
('angel_kuhlman','angel56@hotmail.com','https://gravatar.com/avatar/7b60a62f22beabe772a5025202be84f4','{bcrypt}$2a$10$zSdw6408wCLj7R0Uk/LxkOjfgO2A91QyfmdCLT7lDs13IOvztNOVW'),
('kari_anderson','kari70@gmail.com','https://gravatar.com/avatar/189ede7ab13a0739a06e54820d5d3d65','{bcrypt}$2a$10$ZmTAI4L3.YDDK4qSLd.FtuwZQiZz5nGaugFQZzV76RBtn2Z9MxPaC'),
('verna_smith','verna.smith@yahoo.com','https://gravatar.com/avatar/261b4287a3e49806ead4893a4b5ac01e','{bcrypt}$2a$10$cWoMFx1weD1xRlEdwpM5m./YgqL.jZi4ToQii/k9ucCNb8kCqCkGC'),
('herbert_smith','herbert_smith@hotmail.com','https://gravatar.com/avatar/352af30ae5fd7eb5f7be87418d541fc0','{bcrypt}$2a$10$uDCH06vFVVpOTAWwovNdmeTiAjF3GzrBTFFlmNiekibTLK..JJ2Ey'),
('allison_barrows','allison_barrows@yahoo.com','https://gravatar.com/avatar/247a5c24fc6521abaeadbd164af1a4ef','{bcrypt}$2a$10$bB6Y4M7SyY3JhOFfr8.0GeYiTWo1pSpSXb8nba6kLu9793K6CxZ3q'),
('dan_predovic','dan.predovic@gmail.com','https://gravatar.com/avatar/40fcb53643a7a63dbec1321f1110fcd8','{bcrypt}$2a$10$XcmAVdEbUkBuqRaA/nPKv.B2KayinfTaCNP2uwAaWYlX/NgpUsBIC'),
('bernadette_koss','bernadette.koss78@gmail.com','https://gravatar.com/avatar/3126fed1a7743b40e7c0bf46de7ebf88','{bcrypt}$2a$10$l3StBiP1skp6cNcq7idaQuVjnIKvENEudDs5c4nAF9ENBIHnhI/IG');
--rollback truncate table public.generated_data;


--changeset SergeyLabuzov:fill-identity-user_accounts-table
--comment fill identity.user_accounts table
INSERT INTO identity.user_accounts (username, password)
SELECT email, password
FROM public.generated_data;

ANALYZE identity.user_accounts;
--rollback truncate table identity.user_accounts;


--changeset SergeyLabuzov:fill-identity-user_accounts_roles-table
--comment fill identity.user_accounts_roles table
INSERT INTO identity.user_accounts_roles
(user_account_id, user_role_id)
SELECT ua.id, ur.id
FROM identity.user_accounts ua
         CROSS JOIN identity.user_roles ur
WHERE authority = 'ROLE_USER'
  AND NOT EXISTS
    (
        SELECT 1
        FROM identity.user_accounts_roles uar
        WHERE uar.user_account_id = ua.id
    );

ANALYZE identity.user_accounts_roles;
--rollback truncate table identity.user_accounts_roles;


--changeset SergeyLabuzov:fill-twitter-user_profiles-table
--comment fill twitter.user_profiles table
INSERT INTO twitter.user_profiles (id, nickname, image_link)
SELECT ua.id, gd.nickname, gd.image_link
FROM public.generated_data gd
         JOIN identity.user_accounts ua ON gd.email = ua.username;

ANALYZE twitter.user_profiles;
--rollback truncate table twitter.user_profiles;


--changeset SergeyLabuzov:fill-twitter-subscriptions-table
--comment fill twitter.subscriptions table
INSERT INTO twitter.subscriptions (follower_id, followed_id, created_timestamp)
SELECT follower.id, followed.id, now()
FROM twitter.user_profiles follower
         JOIN twitter.user_profiles followed on follower.id <> followed.id
where FLOOR( RANDOM( ) * 5 + 1 )::int < 2;

ANALYZE twitter.subscriptions;
--rollback truncate table twitter.subscriptions;
