 db.niba.updateOne({name:"riya"},{$set:{name:"Riya"}})

> db.niba.find()
{ "_id" : ObjectId("66222760911c633e6ec2786f"), "set" : { "name" : "wafa" } }
{ "_id" : ObjectId("66222802911c633e6ec27870"), "name" : "sana" }
{ "_id" : ObjectId("6622282f911c633e6ec27871"), "name" : "hadi" }
{ "_id" : ObjectId("66222835911c633e6ec27872"), "name" : "haya" }
{ "_id" : ObjectId("6622283c911c633e6ec27873"), "name" : "saya" }
{ "_id" : ObjectId("66222845911c633e6ec27874"), "name" : "kiran" }
{ "_id" : ObjectId("66222884911c633e6ec27875"), "name" : "maya" }
{ "_id" : ObjectId("66222896911c633e6ec27876"), "name" : "karthik" }
{ "_id" : ObjectId("662228a1911c633e6ec27877"), "name" : "sona" }
{ "_id" : ObjectId("662228ae911c633e6ec27878"), "name" : "sinu" }
{ "_id" : ObjectId("662228b8911c633e6ec27879"), "name" : "Riya" }
{ "_id" : ObjectId("662228eb911c633e6ec2787a"), "name" : "derik" }
{ "_id" : ObjectId("662229d5d5c009723210e51b"), "name" : "bulbul", "age" : "12" }
{ "_id" : ObjectId("66222a50d5c009723210e51c"), "name" : "derik", "age" : "32" }
{ "_id" : ObjectId("66222a74d5c009723210e51d"), "name" : "koyal", "age" : "32" }
{ "_id" : ObjectId("66222a7dd5c009723210e51e"), "name" : "payal", "age" : "32" }
{ "_id" : ObjectId("66222a97d5c009723210e51f"), "name" : "sharath", "age" : 32 }
{ "_id" : ObjectId("66222aa8d5c009723210e520"), "name" : "manu", "age" : 23 }
{ "_id" : ObjectId("66222ab7d5c009723210e521"), "name" : "sonu", "age" : 27 }
{ "_id" : ObjectId("66222ac5d5c009723210e522"), "name" : "finu", "age" : 25 }

> db.niba.updateMany({name:"koyal"},{$set:{age:"42"}})
> db.niba.find()
{ "_id" : ObjectId("66222760911c633e6ec2786f"), "set" : { "name" : "wafa" } }
{ "_id" : ObjectId("66222802911c633e6ec27870"), "name" : "sana" }
{ "_id" : ObjectId("6622282f911c633e6ec27871"), "name" : "hadi" }
{ "_id" : ObjectId("66222835911c633e6ec27872"), "name" : "haya" }
{ "_id" : ObjectId("6622283c911c633e6ec27873"), "name" : "saya" }
{ "_id" : ObjectId("66222845911c633e6ec27874"), "name" : "kiran" }
{ "_id" : ObjectId("66222884911c633e6ec27875"), "name" : "maya" }
{ "_id" : ObjectId("66222896911c633e6ec27876"), "name" : "karthik" }
{ "_id" : ObjectId("662228a1911c633e6ec27877"), "name" : "sona" }
{ "_id" : ObjectId("662228ae911c633e6ec27878"), "name" : "sinu" }
{ "_id" : ObjectId("662228b8911c633e6ec27879"), "name" : "Riya" }
{ "_id" : ObjectId("662228eb911c633e6ec2787a"), "name" : "derik" }
{ "_id" : ObjectId("662229d5d5c009723210e51b"), "name" : "bulbul", "age" : "12" }
{ "_id" : ObjectId("66222a50d5c009723210e51c"), "name" : "derik", "age" : "32" }
{ "_id" : ObjectId("66222a74d5c009723210e51d"), "name" : "koyal", "age" : "42" }
{ "_id" : ObjectId("66222a7dd5c009723210e51e"), "name" : "payal", "age" : "32" }
{ "_id" : ObjectId("66222a97d5c009723210e51f"), "name" : "sharath", "age" : 32 }
{ "_id" : ObjectId("66222aa8d5c009723210e520"), "name" : "manu", "age" : 23 }
{ "_id" : ObjectId("66222ab7d5c009723210e521"), "name" : "sonu", "age" : 27 }
{ "_id" : ObjectId("66222ac5d5c009723210e522"), "name" : "finu", "age" : 25 }

var bulk = db.niba.initializeUnorderedBulkOp();
> bulk.insert({name:"ami",age:20});
> bulk.insert({name:"anu",age:21});
> bulk.insert({name:"manu",age:22});
> bulk.insert({name:"minu",age:23});
> bulk.insert({name:"teena",age:23});
> bulk.insert({name:"reena",age:23});
> bulk.execute();


 db.niba.createIndex({name:-1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
> db.niba.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "name" : -1
                },
                "name" : "name_-1"
        }
]
 db.niba.dropIndex({name:-1})
{ "nIndexesWas" : 2, "ok" : 1 }
> db.niba.getIndexes()
[ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]
