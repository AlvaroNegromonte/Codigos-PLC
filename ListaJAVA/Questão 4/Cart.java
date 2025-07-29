import java.util.ArrayList;

public class Cart {
    private Items[] buyItems;
    private int itemCount;

    public Cart() {
        buyItems = new Items[10]; // limite de 10 itens
        itemCount = 0;
    }

    public String searchItem(String name) throws NotFound, NullParameters {
        if (name == null) throw new NullParameters();

        for (int i = 0; i < itemCount; i++) {
            if (buyItems[i].getName().equals(name)) {
                return "Item found: " + buyItems[i].getName() + " at price: " + buyItems[i].getPrice();
            }
        }

        throw new NotFound();
    }

    public void addItem(Items item) throws NotEnoughSpace, ItemAlreadyExists, NullParameters {
        if (item == null) throw new NullParameters();

        if (itemCount >= 10) {
            throw new NotEnoughSpace();
        }

        for (int i = 0; i < itemCount; i++) {
            if (buyItems[i].getName().equals(item.getName())) {
                throw new ItemAlreadyExists();
            }
        }

        buyItems[itemCount++] = item;
    }

    public void removeItem(String name) throws NotFound, NullParameters {
        if (name == null) throw new NullParameters();

        for (int i = 0; i < itemCount; i++) {
            if (buyItems[i].getName().equals(name)) {
                buyItems[i] = buyItems[--itemCount]; // substitui pelo último
                buyItems[itemCount] = null;
                return;
            }
        }

        throw new NotFound();
    }

    public void getItems() {
        if (itemCount == 0) {
            System.out.println("No items in the cart.");
            return;
        }

        for (int i = 0; i < itemCount; i++) {
            System.out.println("Item: " + buyItems[i].getName() + ", Price: " + buyItems[i].getPrice());
        }
    }
}

