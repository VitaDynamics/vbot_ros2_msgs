# Combined 2D segmentation detections and mask.
#
# detections:
#   2D detections for each segmented instance.
#
# mask:
#   2-channel image where:
#     - channel 0 stores the class id of the pixel
#     - channel 1 stores the object id (oid) corresponding to detections
#
# Background pixels should have class id = 0 and oid = 0.

vision_msgs/Detection2DArray detections
sensor_msgs/Image mask


