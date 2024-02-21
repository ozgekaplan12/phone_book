import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {

  type Name = Text;
  type Phone = Text;

  type Entry = {
    description : Text;
    phone: Phone;
  };

  let phone_book = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

  public func insert(name : Name, entry : Entry): async () {
    phone_book.put(name, entry);
  };

  public query func lookup(name : Name) : async ?Entry {
    phone_book.get(name)
  };
};
