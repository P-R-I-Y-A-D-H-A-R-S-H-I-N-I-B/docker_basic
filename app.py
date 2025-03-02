from pyspark.sql import SparkSession

# Create Spark Session
spark = SparkSession.builder.appName("DockerSparkApp").getOrCreate()

data = [("Priya", 22), ("John", 30), ("Alice", 25)]
df = spark.createDataFrame(data, ["Name", "Age"])

df.show()

spark.stop()
