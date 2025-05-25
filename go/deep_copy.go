package pipeman

func DeepCopyMap(src map[string]interface{}) map[string]interface{} {
	dst := make(map[string]interface{})
	for k, v := range src {
		switch val := v.(type) {
		case map[string]interface{}:
			dst[k] = DeepCopyMap(val)
		case []interface{}:
			dst[k] = DeepCopySlice(val)
		default:
			dst[k] = val // basic types (string, int, bool, etc.)
		}
	}
	return dst
}

func DeepCopySlice(src []interface{}) []interface{} {
	dst := make([]interface{}, len(src))
	for i, v := range src {
		switch val := v.(type) {
		case map[string]interface{}:
			dst[i] = DeepCopyMap(val)
		case []interface{}:
			dst[i] = DeepCopySlice(val)
		default:
			dst[i] = val
		}
	}
	return dst
}
