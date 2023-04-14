# Create a KeyValueStore class whose instances can store key/value pairs and retrieve
# a value for a given key.

# Some things to consider:
# 1) Don't worry about performance
# 2) You cannot use methods from Ruby's Hash class
# 3) If a key does not exist, you should return nil
# 4) An instance cannot contain duplicate keys

class KeyValueStore

    def initialize
      @arr = []
    end

    def set(key, value)
      pair = key, value
      @arr << pair
    end

    def get(key)
      if @arr[0][1].nil?
        return nil
      else
        return @arr[0][1] if @arr[0].include?(key)
      end
    end
  end

  store = KeyValueStore.new

  # Tests

  # Test 1: Get When Nil
  get_result_nil = store.get("test_not_set") == nil
  puts "Get Test Nil: #{get_result_nil}"

  # # Test 2: Setting And Getting
  new_value = "new_value"
  store.set("test", new_value)
  set_result = (store.get("test") == new_value)
  puts "Set Test: #{set_result}"

  # # Test 3: Setting And Getting An Existing Key
  updated_value = "updated_value"
  store.set("test", updated_value)
  update_result = (store.get("test") == updated_value)
  puts "Update Set Test: #{update_result}"