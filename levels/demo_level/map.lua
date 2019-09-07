require("lib")
local chiro = require 'chiro'

local map = {
    { time = 0, x = 0, y = 0,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 1.3999255895615,
        x = -127.5,
        y = 0,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 1.8998990058899,
        x = -127.5,
        y = -45,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 2.5998618602753,
        x = -190.5,
        y = -45,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 3.2998247146606,
        x = -190.5,
        y = -108,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 4.1597790718079,
        x = -267,
        y = -108,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 4.9397373199463,
        x = -267,
        y = -178.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 5.6397004127502,
        x = -330,
        y = -178.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 6.3996596336365,
        x = -330,
        y = -247.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 7.2396154403687,
        x = -405,
        y = -247.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 8.5995426177979,
        x = -405,
        y = -369,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 10.199458122253,
        x = -549,
        y = -369,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 11.519388198853,
        x = -549,
        y = -489,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 12.979310035706,
        x = -679.5,
        y = -489,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 17.599063873291,
        x = -679.5,
        y = -906,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 17.979043960571,
        x = -712.5,
        y = -906,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 18.299026489258,
        x = -712.5,
        y = -934.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 19.158981323242,
        x = -790.5,
        y = -934.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 20.718898773193,
        x = -790.5,
        y = -1075.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 21.898836135864,
        x = -895.5,
        y = -1075.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 23.538749694824,
        x = -895.5,
        y = -1224,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 24.978672027588,
        x = -1024.5,
        y = -1224,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 26.598587036133,
        x = -1024.5,
        y = -1371,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 27.378545761108,
        x = -1093.5,
        y = -1371,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 28.09850692749,
        x = -1093.5,
        y = -1437,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 28.798469543457,
        x = -1156.5,
        y = -1437,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 29.598426818848,
        x = -1156.5,
        y = -1507.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 30.338388442993,
        x = -1224,
        y = -1507.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 31.058349609375,
        x = -1224,
        y = -1572,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 31.838308334351,
        x = -1288.5,
        y = -1572,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 32.618267059326,
        x = -1288.5,
        y = -1642.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 34.158184051514,
        x = -1426.5,
        y = -1642.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 34.878147125244,
        x = -1426.5,
        y = -1707,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 35.638107299805,
        x = -1495.5,
        y = -1707,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 37.238021850586,
        x = -1495.5,
        y = -1851,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 38.697944641113,
        x = -1626,
        y = -1851,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 39.637893676758,
        x = -1626,
        y = -1936.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 40.297859191895,
        x = -1684.5,
        y = -1936.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 41.737781524658,
        x = -1684.5,
        y = -2067,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 42.617733001709,
        x = -1764,
        y = -2067,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 43.517688751221,
        x = -1764,
        y = -2148,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 44.997608184814,
        x = -1896,
        y = -2148,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 46.497528076172,
        x = -1896,
        y = -2283,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 63.196640014648,
        x = -3399,
        y = -2283,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 64.016593933105,
        x = -3399,
        y = -2358,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 64.696563720703,
        x = -3459,
        y = -2358,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 65.396522521973,
        x = -3459,
        y = -2421,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 66.15648651123,
        x = -3528,
        y = -2421,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 66.976440429688,
        x = -3528,
        y = -2494.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 67.696403503418,
        x = -3594,
        y = -2494.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 68.476364135742,
        x = -3594,
        y = -2563.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 69.216323852539,
        x = -3661.5,
        y = -2563.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 70.676246643066,
        x = -3661.5,
        y = -2694,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 72.15616607666,
        x = -3795,
        y = -2694,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 73.636085510254,
        x = -3795,
        y = -2827.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 75.056007385254,
        x = -3922.5,
        y = -2827.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 76.575927734375,
        x = -3922.5,
        y = -2964,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 78.095848083496,
        x = -4060.5,
        y = -2964,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 79.49577331543,
        x = -4060.5,
        y = -3090,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 80.995697021484,
        x = -4194,
        y = -3090,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 86.175422668457,
        x = -4194,
        y = -3556.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 89.875221252441,
        x = -4527,
        y = -3556.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 92.93505859375,
        x = -4527,
        y = -3832.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 94.594970703125,
        x = -4675.5,
        y = -3832.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 95.214942932129,
        x = -4675.5,
        y = -3889.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 95.914901733398,
        x = -4738.5,
        y = -3889.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 96.594863891602,
        x = -4738.5,
        y = -3951,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 97.374824523926,
        x = -4807.5,
        y = -3951,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 98.094787597656,
        x = -4807.5,
        y = -4017,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 98.794746398926,
        x = -4870.5,
        y = -4017,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 99.474716186523,
        x = -4870.5,
        y = -4077,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 100.39466094971,
        x = -4953,
        y = -4077,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 103.47450256348,
        x = -4953,
        y = -4354.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 105.01441955566,
        x = -5092.5,
        y = -4354.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 106.45434570313,
        x = -5092.5,
        y = -4483.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 107.89426422119,
        x = -5223,
        y = -4483.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 109.43418121338,
        x = -5223,
        y = -4621.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    },
    {
        time = 110.39413452148,
        x = -5310,
        y = -4621.5,
        animation = chiro.create({
            dir = 'anim/powerup',
            states = {
                grow = {
                    loop = false
                }
            },
            default = 'grow'
        })
    }
}

return map