config['entries']['bahama_main'] = {
    ['enabled'] = true,
    ['autoAdjustTime'] = false,
    ['idleWallpaperUrl'] = 'https://files.criticalscripts.shop/cs-hall-dui/wallpaper.png',
    ['maxVolumePercent'] = 50,
    ['smokeFxMultiplier'] = 3,
    ['smokeTimeoutMs'] = 5000,
    ['sparklerFxMultiplier'] = 1,
    ['sparklerTimeoutMs'] = 1500,
    ['delayBetweenSmokeChainMs'] = 1500,
    ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
    ['featureDelayWithControllerInterfaceClosedMs'] = 500,

    ['bass'] = {
        ['smoke'] = {
            ['cooldownMs'] = 30000,
            ['colorWithDynamicSpotlights'] = true
        },

        ['sparklers'] = {
            ['cooldownMs'] = 30000,
            ['colorWithDynamicSpotlights'] = true
        }
    },

    ['area'] = {
        ['range'] = 32.0,
        ['center'] = vector3(-1391.1701660156,-609.90618896484, 34.309921264648),
        ['height'] = nil,

        ['polygons'] = {
            ['applyLowPassFilterOutside'] = true,
            ['invertLowPassApplication'] = false,
            ['hideReplacersOutside'] = true,

            ['entries'] = {
                {
                    ['height'] = {
                        ['min'] = 26.0,
                        ['max'] = 40.0
                    },

                    ['points'] = {
                        vector2(-1386.3326416016,-587.13238525391),
                        vector2(-1384.6265869141,-585.83770751953),
                        vector2(-1382.3958740234,-585.88641357422),
                        vector2(-1368.8504638672,-606.33929443359),
                        vector2(-1400.1997070313,-626.76544189453),
                        vector2(-1406.5516357422,-617.46563720703),
                        vector2(-1409.4482421875,-611.94085693359),
                        vector2(-1408.9122314453,-607.82824707031),
                        vector2(-1408.5935058594,-605.05645751953),
                        vector2(-1402.4978027344,-597.51702880859),
                        vector2(-1397.0925292969,-593.61126708984),
                        vector2(-1390.3916015625,-588.86663818359)
                    }
                }
            }
        }
    },

    ['disableEmitters'] = nil,

    ['scaleform'] = nil,

    ['replacers'] = nil,
    ['monitors'] = nil,
    ['screens'] = nil,
    ['spotlights'] = {
        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1385.6955566406, -594.20819091797, 38.367259979248),
            ['rotation'] = vector3(50,80,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },
        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.TREBLE,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1382.9099121094, -598.26031494141, 38.420223236084),
            ['rotation'] = vector3(50,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },
        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1377.6650390625, -606.37774658203, 38.35364151001),
            ['rotation'] = vector3(90,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },

        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1391.3056640625, -603.51483154297, 38.553413391113),
            ['rotation'] = vector3(50,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },
        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.TREBLE,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1385.7957763672, -611.81524658203, 38.533218383789),
            ['rotation'] = vector3(50,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },

        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1388.4150390625, -607.62677001953, 38.400970458984),
            ['rotation'] = vector3(50,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },
        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.TREBLE,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1399.5867919922, -608.79852294922, 38.322265625),
            ['rotation'] = vector3(50,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },
        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1393.6325683594, -618.16467285156, 38.457386016846),
            ['rotation'] = vector3(50,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        },
        {
            ['soundSyncType'] = SOUND_SYNC_TYPE.TREBLE,
            ['hash'] = 'cs_prop_hall_spotlight',
            ['position'] = vector3(-1384.2662353516, -614.48919677734, 38.458198547363),
            ['rotation'] = vector3(50,20,20),
            ['heading'] = 10.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 0}
        }

    },
    ['smokers'] = {
        {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1400.2475585938, -596.59716796875, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1403.2208251953, -597.65966796875, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1406.2819824219, -600.43701171875, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1408.5161132813, -604.57403564453, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1409.2506103516, -608.17901611328, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1396.3420410156, -594.08776855469, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },

        {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1394.2702636719, -597.25842285156, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1390.5791015625, -595.18939208984, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1396.4609375, -599.47955322266, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1401.4245605469, -604.72479248047, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1402.4931640625, -611.51507568359, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        }, {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = false,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1400.0703125, -616.57250976563, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },
        
        {
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = true,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1386.6807861328, -611.65704345703, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },{
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = true,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1386.4841308594, -608.54162597656, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },{
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = true,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1388.5748291016, -605.78875732422, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },{
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = true,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1391.2103271484, -605.07916259766, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },{
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = true,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1394.4525146484, -606.30615234375, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },{
            ['hash'] = 'ba_prop_club_smoke_machine',
            ['visible'] = true,

            ['fx'] = {
                ['library'] = 'scr_ba_club',
                ['effect'] = 'scr_ba_club_smoke_machine',
            },

            ['position'] = vector3(-1396.1926269531, -609.79870605469, 29.3),
            ['rotation'] = nil,
            ['heading'] = -55.0,
            ['lodDistance'] = 512,
            ['color'] = {255, 255, 255}
        },
    },
    ['sparklers'] = nil,
    ['speakers'] = {
        {
            ['hash'] = 'ba_prop_battle_club_speaker_large',
            ['visible'] = false,
            ['position'] = vector3(-1386.2709960938, -607.22418212891, 30),
            ['rotation'] = nil,
            ['heading'] = 120.0,
            ['lodDistance'] = nil,
            ['soundOffset'] = vector3(0.0, 0.0, 0.0),
            ['distanceOffset'] = nil,
            ['maxDistance'] = 80.0,
            ['refDistance'] = 32.0,
            ['rolloffFactor'] = 1.25,
            ['coneInnerAngle'] = 90,
            ['coneOuterAngle'] = 180,
            ['coneOuterGain'] = 0.5,
            ['fadeDurationMs'] = 250,
            ['volumeMultiplier'] = 1.0,
            ['lowPassGainReductionPercent'] = nil
        },
        {
            ['hash'] = 'ba_prop_battle_club_speaker_large',
            ['visible'] = false,
            ['position'] = vector3(-1386.5695800781, -606.55108642578, 31.5),
            ['rotation'] = nil,
            ['heading'] = 120.0,
            ['lodDistance'] = nil,
            ['soundOffset'] = vector3(0.0, 0.0, 0.0),
            ['distanceOffset'] = nil,
            ['maxDistance'] = 80.0,
            ['refDistance'] = 32.0,
            ['rolloffFactor'] = 1.25,
            ['coneInnerAngle'] = 90,
            ['coneOuterAngle'] = 180,
            ['coneOuterGain'] = 0.5,
            ['fadeDurationMs'] = 250,
            ['volumeMultiplier'] = 1.0,
            ['lowPassGainReductionPercent'] = nil
        },
        {
            ['hash'] = 'ba_prop_battle_club_speaker_large',
            ['visible'] = false,
            ['position'] = vector3(-1392.8306884766, -604.47100830078, 31.5),
            ['rotation'] = nil,
            ['heading'] = 190.0,
            ['lodDistance'] = nil,
            ['soundOffset'] = vector3(0.0, 0.0, 0.0),
            ['distanceOffset'] = nil,
            ['maxDistance'] = 80.0,
            ['refDistance'] = 32.0,
            ['rolloffFactor'] = 1.25,
            ['coneInnerAngle'] = 90,
            ['coneOuterAngle'] = 180,
            ['coneOuterGain'] = 0.5,
            ['fadeDurationMs'] = 250,
            ['volumeMultiplier'] = 1.0,
            ['lowPassGainReductionPercent'] = nil
        },
        {
            ['hash'] = 'ba_prop_battle_club_speaker_large',
            ['visible'] = false,
            ['position'] = vector3(-1393.4428710938, -604.78594970703, 31.5),
            ['rotation'] = nil,
            ['heading'] = 190.0,
            ['lodDistance'] = nil,
            ['soundOffset'] = vector3(0.0, 0.0, 0.0),
            ['distanceOffset'] = nil,
            ['maxDistance'] = 80.0,
            ['refDistance'] = 32.0,
            ['rolloffFactor'] = 1.25,
            ['coneInnerAngle'] = 90,
            ['coneOuterAngle'] = 180,
            ['coneOuterGain'] = 0.5,
            ['fadeDurationMs'] = 250,
            ['volumeMultiplier'] = 1.0,
            ['lowPassGainReductionPercent'] = nil
        },
        {
            ['hash'] = 'ba_prop_battle_club_speaker_large',
            ['visible'] = false,
            ['position'] = vector3(-1400.05859375, -596.55010986328, 34.000842285156),
            ['rotation'] = nil,
            ['heading'] = 40.0,
            ['lodDistance'] = nil,
            ['soundOffset'] = vector3(0.0, 0.0, 0.0),
            ['distanceOffset'] = nil,
            ['maxDistance'] = 80.0,
            ['refDistance'] = 32.0,
            ['rolloffFactor'] = 1.25,
            ['coneInnerAngle'] = 90,
            ['coneOuterAngle'] = 180,
            ['coneOuterGain'] = 0.5,
            ['fadeDurationMs'] = 250,
            ['volumeMultiplier'] = 1.0,
            ['lowPassGainReductionPercent'] = nil
        },
        {
            ['hash'] = 'ba_prop_battle_club_speaker_large',
            ['visible'] = false,
            ['position'] = vector3(-1399.8197021484, -626.01159667969, 34.081314086914),
            ['rotation'] = nil,
            ['heading'] = 150.0,
            ['lodDistance'] = nil,
            ['soundOffset'] = vector3(0.0, 0.0, 0.0),
            ['distanceOffset'] = nil,
            ['maxDistance'] = 80.0,
            ['refDistance'] = 32.0,
            ['rolloffFactor'] = 1.25,
            ['coneInnerAngle'] = 90,
            ['coneOuterAngle'] = 180,
            ['coneOuterGain'] = 0.5,
            ['fadeDurationMs'] = 250,
            ['volumeMultiplier'] = 1.0,
            ['lowPassGainReductionPercent'] = nil
        }
    }
}