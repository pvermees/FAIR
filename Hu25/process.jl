using KJ
method = "U-Pb"
channels = Dict("d"=>"Pb207",
                "D"=>"Pb206",
                "P"=>"U238");
myrun = load("data")
standards = Dict("MAD_ap" => "MAD")
glass = Dict("NIST612" => "GLASS_612")
blk, fit = process!(myrun,method,channels,standards,glass)
export2IsoplotR(myrun,method,channels,blk,fit;fname="json/all.json")
